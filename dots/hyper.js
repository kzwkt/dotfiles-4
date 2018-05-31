const css = `
  * {
    font-variant-ligatures: contextual;
  }
`;

module.exports = {
  config: {
    fontSize: 12,
    fontFamily: "Fira Code",
    css: css,
    termCSS: css
  },
  plugins: ["hyper-one-dark"]
};
