INSERT IGNORE INTO `s_core_snippets` (`namespace`, `shopID`, `localeID`, `name`, `value`, `created`, `updated`) VALUES

(48838, 'newsletter/alt/index', 1, 30, 'NewsletterIndexCopyright', '© 2015 ВЕП 2011 ЕООД - Всички права запазени.', '2014-12-06 18:00:00', '2015-02-07 09:52:55', 1),
(48839, 'newsletter/alt/index', 1, 30, 'NewsletterIndexInfoExcludeVat', ' ', '2014-12-06 18:00:00', '2015-02-10 07:50:08', 1),
(48840, 'newsletter/alt/index', 1, 30, 'NewsletterIndexInfoIncludeVat', ' ', '2014-12-06 18:00:00', '2015-02-07 09:55:00', 1),
(48841, 'newsletter/alt/index', 1, 30, 'NewsletterIndexInfoPlain', 'Вие получавате този бюлетин в обикновена форма на текст. Моля, посетете нашия магазин, за да получите достъп до всички специални оферти.', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
(48842, 'newsletter/alt/index', 1, 30, 'NewsletterIndexPseudoInsteadOf', 'вместо', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
(48843, 'newsletter/container/article', 1, 30, 'NewsletterBoxArticleLinkDetails', 'Още информация', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
(48844, 'newsletter/container/article', 1, 30, 'NewsletterBoxArticleStartsAt', 'От', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
(48845, 'newsletter/index/footer', 1, 30, 'NewsletterFooterCopyright', '© 2015 ВЕП 2011 ЕООД - Всички права запазени.', '2014-12-06 18:00:00', '2015-02-07 09:53:02', 1),
(48846, 'newsletter/index/footer', 1, 30, 'NewsletterFooterInfoExcludeVat', ' ', '2014-12-06 18:00:00', '2015-02-10 07:50:11', 1),
(48847, 'newsletter/index/footer', 1, 30, 'NewsletterFooterInfoIncludeVat', ' ', '2014-12-06 18:00:00', '2015-02-07 09:55:03', 1),
(48848, 'newsletter/index/footer', 1, 30, 'NewsletterFooterLinkNewWindow', 'Отвори бюлетина в браузър', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
(48849, 'newsletter/index/footer', 1, 30, 'NewsletterFooterLinkUnsubscribe', 'Отписване от информационния бюлетин', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
(48850, 'newsletter/index/footer', 1, 30, 'NewsletterFooterNavigation', '<a href="#" target="_blank" style="font-size:10px;">Контакт</a> | <a href="#" target="_blank" style="font-size:10px;">Информация</a>', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0),
(47923, 'newsletter/index/header', 1, 30, 'NewsletterHeaderLinkHome', 'Начало', '2014-12-06 18:00:00', '2014-12-06 18:00:00', 0)

ON DUPLICATE KEY UPDATE
  `namespace` = VALUES(`namespace`),
  `shopID` = VALUES(`shopID`),
  `name` = VALUES(`name`),
  `value` = VALUES(`value`),
  `localeID` = VALUES(`localeID`);