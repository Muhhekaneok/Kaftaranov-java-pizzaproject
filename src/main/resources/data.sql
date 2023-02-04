insert into pizzeria (id, name, city, address, site, phone, delivery, around_the_clock, card_payment, rating)
    values ('78857ae2-22d4-4725-b27d-c3c9943a5aab', 'FATTO A MANO', 'Brighton', '65-67 Church Road', 'http://www.fattoamanopizza.com', '+441273325400', true, false, true, 4);
insert into pizzeria (id, name, city, address, site, phone, delivery, around_the_clock, card_payment, rating)
    values ('6c6c9568-208f-4dab-b3e8-92ef320248c1', 'LOST SOULS PIZZA', 'London', '245 Eversholt St', 'https://lostsoulspizza.com', '+442073882101', true, true, true, 4);
insert into pizzeria (id, name, city, address, site, phone, delivery, around_the_clock, card_payment, rating)
    values ('cd6a9cff-9e83-4438-aaea-81b98c79e9c7', 'NUDO', 'London', '70 High Rd, East Finchley', 'https://nudopizza.co.uk', '+442081944415', true, false, true, 5);

insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('325979eb-9938-4c9d-9109-a6aa43e92cd6', 'Marinara', 7.0, false, true, '78857ae2-22d4-4725-b27d-c3c9943a5aab');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('6c77c820-17f1-4ae9-96fe-8f42baf9689c', 'Margherita', 8.5, false, false, '78857ae2-22d4-4725-b27d-c3c9943a5aab');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('19dc9b10-e6c4-493d-a382-f5663faf3d8a', 'Margherita buffalo', 9.0, false, false, '78857ae2-22d4-4725-b27d-c3c9943a5aab');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('407faec1-a90c-4f5c-a53c-65187b986e33', 'Diavola', 9.0, true, false, '78857ae2-22d4-4725-b27d-c3c9943a5aab');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', 'Capricciosa', 9.0, false, false, '78857ae2-22d4-4725-b27d-c3c9943a5aab');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('591a3a60-c1bb-4190-87b5-b4b1e9a1d0f6', 'Nduja', 9.0, false, false, '78857ae2-22d4-4725-b27d-c3c9943a5aab');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('1b0e450d-ef11-46e4-be35-ca653144dec0', 'Napoletana', 9.0, false, false, '78857ae2-22d4-4725-b27d-c3c9943a5aab');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('8c8f6adb-1a26-4169-83ea-f4bd92f02821', 'Quattro formaggi', 9.0, true, false, '78857ae2-22d4-4725-b27d-c3c9943a5aab');

insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('96a4bf74-36d1-4f9f-9fe3-9e9880b81a01', 'Santa carla (veggie)', 8.5, false, true, '6c6c9568-208f-4dab-b3e8-92ef320248c1');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('eca5a66a-3e4f-40ca-8868-df3255aec328', 'Fangs for the memories', 9.5, false, false, '6c6c9568-208f-4dab-b3e8-92ef320248c1');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('819dfcde-7852-4261-9b9f-7ec6cf94524e', 'You killed Marco Polo', 8.0, false, false, '6c6c9568-208f-4dab-b3e8-92ef320248c1');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('902a1bc1-2799-4764-9737-25f09ac5e21e', 'Pops go to the pizza', 8.0, false, false, '6c6c9568-208f-4dab-b3e8-92ef320248c1');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('d64880f0-ff25-4e60-af72-6bc14b77fec0', 'Have you seen lady', 9.5, false, false, '6c6c9568-208f-4dab-b3e8-92ef320248c1');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('0b16933c-0265-4c8e-8736-6fb861298e00', 'Death', 8.0, false, true, '6c6c9568-208f-4dab-b3e8-92ef320248c1');

insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('990e3688-a6aa-47e2-88d9-600504c2ecd4', 'Salsiccia bianka', 13, false, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', 'Florentina ricotta', 12, false, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('909dfd93-a115-4c49-b732-5b33c07582bb', 'Bresaola rucola', 14, false, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('1dbc3d7f-7512-41f3-b3c7-1d07ebad557e', 'Superbiotica', 14, true, true, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('0b3e1601-6367-455a-b047-3da0090c31cd', 'Truffle fungo', 12, false, true, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('71456279-6f74-450e-aad6-eb7a3aa94a37', 'Pepperoni', 9, false, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('85f52cdd-33f3-48ad-bba9-5bae04bf3a43', 'Pepperoni hot', 9, false, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('731f196b-71b2-48a9-9a9c-6268ca777ced', 'Aubergine parmigana', 14, true, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', 'Italian sausage', 13, false, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('f4a4b275-542a-4464-8316-07414c467062', 'Aegean lamb', 11, true, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');
insert into pizza (id, name, price, novelty, vegan, pizzeria_id)
    values ('8731bf22-1a3e-43bd-acb5-e6449c3fe384', 'Carne mista', 11, false, false, 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7');


insert into ingredients (id, composition, pizza_id)
    values ('951e7977-ed5c-4033-adc8-063e99db01a0', 'Tomato, garlic, oregano, basil', '325979eb-9938-4c9d-9109-a6aa43e92cd6');
-- -----------------------------------------------------------------------------------------------------------------------------
-- customer
--insert into customer (id, name, phoneNumber, review, pizzeria_id, pizza_id)
--    values ('7053251c-d962-43f2-907a-295efc06b4e3', 'Joe Biden', '+1 111 111 11 11', 'It was one of the best pizzas in my life.!', 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7', '116e65ed-16a4-4024-9bbf-dfb1803284c5');
--insert into customer (id, name, phoneNumber, review, pizzeria_id, pizza_id)
--    values ('f3859a2e-9092-445c-8d5e-5f0c8bba4601', 'Olaf Scholz', '+49 999 999 99 99', 'Es war eine fantastische Pizza!!', 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7', '0b3e1601-6367-455a-b047-3da0090c31cd');
--insert into customer (id, name, phoneNumber, review, pizzeria_id, pizza_id)
--    values ('19de046d-b079-4682-bded-a45cc855bb07', 'Emmanuel Macron', '+33 333 33 33 33', 'Très bien. Mais les meilleures pizzas sont toujours françaises', '78857ae2-22d4-4725-b27d-c3c9943a5aab', '19dc9b10-e6c4-493d-a382-f5663faf3d8a');