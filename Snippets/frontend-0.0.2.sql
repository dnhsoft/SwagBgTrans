INSERT IGNORE INTO `s_core_snippets` (`namespace`, `shopID`, `localeID`, `name`, `value`, `created`, `updated`) VALUES

('frontend/account/orders', 1, 30, 'OrderColumnActions', 'Детайли', '2014-12-06 18:00:00', '2014-12-06 18:00:00'),
('frontend/account/orders', 1, 30, 'OrderColumnId', 'Поръчка №:', '2014-12-06 18:00:00', '2014-12-06 18:00:00'),
('frontend/account/orders', 1, 30, 'OrdersHeader', 'Поръчки сортирани по дата', '2014-12-06 18:00:00', '2014-12-06 18:00:00'),
('frontend/detail/data', 1, 30, 'DetailDataId', 'Номер на продукт:', '2014-12-06 18:00:00', '2014-12-06 18:00:00'),
('frontend/detail/data', 1, 30, 'DetailDataInfoSavePercent', 'Спестени', '2014-12-06 18:00:00', '2014-12-06 18:00:00'),
('frontend/checkout/confirm_header', 1, 30, 'CheckoutColumnExcludeTax', 'ДДС', '2014-12-06 18:00:00', '2014-12-06 18:00:00'),
('frontend/detail/data', 1, 30, 'DetailDataPriceInfo', 'Цена{if !$sOutputNet} с вкл. ДДС{/if} <a title="цени за доставка" href="{url controller=custom sCustom=6}" style="text-decoration:underline"> плюс цена за доставка</a>', '2014-12-06 18:00:00', '2014-12-06 18:00:00')

ON DUPLICATE KEY UPDATE
  `namespace` = VALUES(`namespace`),
  `shopID` = VALUES(`shopID`),
  `name` = VALUES(`name`),
  `value` = VALUES(`value`),
  `localeID` = VALUES(`localeID`);