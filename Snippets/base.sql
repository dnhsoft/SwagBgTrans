INSERT IGNORE INTO `s_core_snippets` (`namespace`, `shopID`, `localeID`, `name`, `value`, `created`, `updated`) VALUES

('base/login/view/main', 1, 30, 'create_desktop_message', 'Моля изберете заглавие на новия работен плот', '2014-12-06 18:00:00', '2014-12-06 18:00:00'),
('base/login/view/main', 1, 30, 'create_desktop_title', 'Създай работен плот', '2014-12-06 18:00:00', '2014-12-06 18:00:00')

ON DUPLICATE KEY UPDATE
  `namespace` = VALUES(`namespace`),
  `shopID` = VALUES(`shopID`),
  `name` = VALUES(`name`),
  `value` = VALUES(`value`),
  `localeID` = VALUES(`localeID`);