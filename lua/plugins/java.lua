return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mfussenegger/nvim-jdtls",
  },
  opts = {
    setup = {
      jdtls = function(_, opts)
        local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
        local workspace_dir = vim.fn.stdpath("data") .. "/site/java/workspace-root/" .. project_name
        os.execute("mkdir " .. workspace_dir)
        local jdtls = require("jdtls")

        local mason_registry = require("mason-registry")
        local install_path = mason_registry.get_package("jdtls"):get_install_path()
        local lombok_path = install_path .. "/lombok.jar"

        local bundles = {
          mason_registry.get_package("java-debug-adapter"):get_install_path()
            .. "/extension/server/com.microsoft.java.debug.plugin-0.45.0.jar",
        }
        vim.list_extend(
          bundles,
          vim.split(
            vim.fn.glob(mason_registry.get_package("java-test"):get_install_path() .. "/extension/server/*.jar"),
            "\n"
          )
        )

        local jdtls_opts = vim.tbl_deep_extend("force", opts, {
          cmd = {
            "java",
            "-Declipse.application=org.eclipse.jdt.ls.core.id1",
            "-Dosgi.bundles.defaultStartLevel=4",
            "-Declipse.product=org.eclipse.jdt.ls.core.product",
            "-Dlog.protocol=true",
            "-Dlog.level=ALL",
            "-javaagent:" .. lombok_path,
            "-Xms1g",
            "--add-modules=ALL-SYSTEM",
            "--add-opens",
            "java.base/java.util=ALL-UNNAMED",
            "--add-opens",
            "java.base/java.lang=ALL-UNNAMED",
            "-jar",
            vim.fn.glob(install_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
            "-configuration",
            install_path .. "/config_" .. "linux",
            "-data",
            workspace_dir,
          },
          init_options = {
            bundles = bundles,
          },
          filetypes = { "java" },
        })

        -- Start or attach jdtls
        require("lazyvim.plugins.lsp")
        jdtls.start_or_attach(jdtls_opts)
        return true
      end,
    },
  },
}
