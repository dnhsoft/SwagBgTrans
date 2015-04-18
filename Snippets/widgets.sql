INSERT IGNORE INTO `s_core_snippets` (`namespace`, `shopID`, `localeID`, `name`, `value`, `created`, `updated`) VALUES

('widgets/emotion/components/component_article', 1, 30, 'ListingBoxNoPicture', 'Няма снимка', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
('widgets/emotion/components/component_blog', 1, 30, 'EmotionBlogPreviewNopic', 'Няма налична снимка', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
('widgets/emotion/slide_articles', 1, 30, 'reducedPrice', 'Вместо:', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
('widgets/emotion/slide_articles', 1, 30, 'Star', '*', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
('widgets/recommendation/slide_articles', 1, 30, 'reducedPrice', 'Вместо:', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0)


ON DUPLICATE KEY UPDATE
  `namespace` = VALUES(`namespace`),
  `shopID` = VALUES(`shopID`),
  `name` = VALUES(`name`),
  `value` = VALUES(`value`),
  `localeID` = VALUES(`localeID`);