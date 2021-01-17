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
  moduleNameMapper: {
    '\.(jpg|jpeg|png|gif|eot|otf|webp|svg|ttf|woff|woff2|mp4|webm|wav|mp3|m4a|aac|oga)$': '<rootDir>/app/javascript/__mocks__/fileMock.js',
    '\.(css|scss)$': '<rootDir>/app/javascript/__mocks__/styleMock.js'
  },
};
