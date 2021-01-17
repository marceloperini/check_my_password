module.exports = {
  clearMocks: true,
  testURL: 'http://localhost',
  coverageDirectory: "coverage",
  coverageProvider: "v8",
  moduleFileExtensions: [
    "js",
    "json",
    "jsx",
  ],
  testMatch: [
    '**/*.test.js?(x)'
  ],
  testEnvironment: "node",
};
