return {
  servers = {
    tailwindcss = {
      filetypes = {
        "html", "css", "scss", "javascript", "javascriptreact", 
        "typescript", "typescriptreact", "svelte", "vue", "templ", 
        "astro", "php", "blade", "mdx", "tsx", "jsx", "rescript",
        "xml", "svg", "graphql", "glimmer", "handlebars", "hbs"
      },
      init_options = {
        userLanguages = {
          html = "html",
          css = "css",
          scss = "css",
          javascript = "javascript",
          javascriptreact = "javascriptreact",
          typescript = "typescript",
          typescriptreact = "typescriptreact",
          svelte = "svelte",
          vue = "vue",
          templ = "templ",
          astro = "astro",
          php = "php",
          blade = "blade",
          mdx = "mdx",
        },
      },
      settings = {
        tailwindCSS = {
          includeLanguages = {
            html = "html",
            javascript = "javascript",
            javascriptreact = "javascriptreact",
            typescript = "typescript",
            typescriptreact = "typescriptreact",
          },
          experimental = {
            classRegex = {
              "tw`([^`]*)",
              "tw=\"([^\"]*)",
              "tw={\"([^\"}]*)",
              "tw\\.\\w+`([^`]*)",
              "tw\\(.*?\\)`([^`]*)",
            },
          },
          validate = true,
          lint = {
            cssConflict = "warning",
            invalidApply = "error",
            invalidConfigPath = "error",
            invalidScreen = "error",
            invalidTailwindDirective = "error",
            invalidVariant = "error",
            recommendedVariantOrder = "warning",
          },
        },
      },
      handlers = {
        ["tailwindcss/getConfiguration"] = function(_, _, params, _, bufnr, _)
          vim.lsp.buf_notify(bufnr, "tailwindcss/getConfigurationResponse", { _id = params._id })
        end,
      },
    },
  },
}
