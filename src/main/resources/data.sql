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

insert into ingredients (id, name) values ('0de91c24-c35a-4e11-8212-b54d1ce0669d', 'tomato');
insert into ingredients (id, name) values ('96769f1d-6361-44dc-a34f-5f091afbc507', 'garlic');
insert into ingredients (id, name) values ('c7eb3020-f7c3-4046-a2a5-818b5476803e', 'oregano');
insert into ingredients (id, name) values ('b00956b0-e19c-4327-b84b-51a66b06d84c', 'basil');
insert into ingredients (id, name) values ('3177e923-215d-44b4-a79c-fd09225c8a33', 'mozzarella');
insert into ingredients (id, name) values ('e5672f3e-e870-4605-aca4-a0a18c89801e', 'parmesan');
insert into ingredients (id, name) values ('b1932714-185a-4b05-a2b7-1a6c67bc1668', 'buffalo mozzarella');
insert into ingredients (id, name) values ('18b1553d-6a17-4ef3-b02c-4e6a347b3ed4', 'salamino piccante');
insert into ingredients (id, name) values ('b9364753-ef08-4d95-bbb9-c1d9d60190d8', 'chilli');
insert into ingredients (id, name) values ('00d14a16-c9f1-4434-97c2-8c9b0d49b178', 'ham');
insert into ingredients (id, name) values ('c94c1764-94e4-4457-9f0d-9c0f2a630d62', 'salame Napoli');
insert into ingredients (id, name) values ('aa0dc2ed-6308-495b-b0ca-9560ab29cf4e', 'mushrooms');
insert into ingredients (id, name) values ('f9596825-96d2-4129-a148-3637034dcdb6', 'roasted mushrooms');
insert into ingredients (id, name) values ('c684846e-9fea-408a-899d-baeb201fcb5d', 'grilled artichokes');
insert into ingredients (id, name) values ('81fbcd12-a820-44d2-86d5-141a1781d33a', 'marinated artichokes');
insert into ingredients (id, name) values ('4111478f-c643-4f62-a140-c1b1586b034c', 'black olives');
insert into ingredients (id, name) values ('e03a2626-9b1f-4395-a6d7-041df6a2341d', 'nduja (spicy minced pork)');
insert into ingredients (id, name) values ('19d52d96-bf96-41be-89f0-41ba849917da', 'salamino piccante (spicy salami)');
insert into ingredients (id, name) values ('3d683f20-59ad-4302-b989-47c86c964f35', 'roasted peppers');
insert into ingredients (id, name) values ('0164f722-3679-428f-b89c-282ddcac2201', 'anchovies');
insert into ingredients (id, name) values ('7eb9830a-3eb1-4e68-a4be-6c84b90a18ae', 'capers');
insert into ingredients (id, name) values ('86f7ce89-e7df-488e-b227-f5481ef95dff', 'taleggio');
insert into ingredients (id, name) values ('684334c3-f510-4695-92ba-9fa71674e0a8', 'gorgonzola');
insert into ingredients (id, name) values ('659cc506-303d-4644-a0f7-c03858781cad', 'smoked provola');
insert into ingredients (id, name) values ('4a47c51a-adc2-4ca9-8228-66d26342c62f', 'cherry tomato');
insert into ingredients (id, name) values ('40a6f21e-3d67-4789-a4a4-8d94f7fc88cf', 'chorizo');
insert into ingredients (id, name) values ('ce7311d0-bb1b-4521-a7af-ddae70d8a4d8', 'onion');
insert into ingredients (id, name) values ('4a336dff-f36b-4245-a242-acb57ad97d23', 'chilli flake’s');
insert into ingredients (id, name) values ('fe1eb16a-f19a-47fe-8eba-a9a5e1e218c8', 'chicken');
insert into ingredients (id, name) values ('f2c3179b-0e07-4317-90cd-3641bb57dfe7', 'italian beef sausage');
insert into ingredients (id, name) values ('56524baf-253d-4bd7-80dc-ea6a21744a77', 'broccoli');
insert into ingredients (id, name) values ('42bdefe1-fbb5-47e7-a74e-17619aa96a8b', 'sundried tomato');
insert into ingredients (id, name) values ('6964aa44-4de6-404e-bf01-391c651d88a7', 'red onions');
insert into ingredients (id, name) values ('8cf05bb8-49e4-487e-a086-eb94cdd775ce', 'truffle cream sauce base');
insert into ingredients (id, name) values ('98d9c351-3e1b-477a-b73a-d6a09c165e06', 'spinach');
insert into ingredients (id, name) values ('8842426f-0ba9-46b3-8f6e-d0abc333d15f', 'ricotta sauce base');
insert into ingredients (id, name) values ('af6b567b-28c0-4228-810d-a2e6c591d663', 'tomato sauce base');
insert into ingredients (id, name) values ('3bbabff3-464b-4b18-a4c1-d5cdfd26c034', 'kalamata olives');
insert into ingredients (id, name) values ('6719234a-84b7-45ec-a52f-e4856ad25cef', 'toasted pine nuts');
insert into ingredients (id, name) values ('60bab33d-f5ec-4494-9b30-facc0a805e92', 'beef bresaola');
insert into ingredients (id, name) values ('24b8612d-068e-4970-9d75-ef2898792e35', 'balsamic fig reduction');
insert into ingredients (id, name) values ('bba58f94-c5a5-4a30-a2ad-f9400278b045', 'rocket leaf');
insert into ingredients (id, name) values ('197b5ebe-21bd-4a36-8124-2dff4050ab82', 'aubergine');
insert into ingredients (id, name) values ('a64ac330-53d2-4f39-9826-e7dbe2f16767', 'beef pepperoni');
insert into ingredients (id, name) values ('f6dfd96f-6448-452f-ac69-25c80cdcc3dd', 'jalapenos');
insert into ingredients (id, name) values ('559ed45d-1abb-49b2-9866-90baf53d56f3', 'garlic oil');
insert into ingredients (id, name) values ('cc3cb518-d7a1-49dd-b0f0-66c21f50301f', 'spicy beef sausage');
insert into ingredients (id, name) values ('bd279582-3b26-4ace-9586-1b2c75316c6f', 'green peppers');
insert into ingredients (id, name) values ('50b32fd6-47d5-4edc-8f1b-b57d1df743ae', 'fior di latte');
insert into ingredients (id, name) values ('4f5945cb-e5f6-4ede-83ca-88e9426962fe', 'grilled marinated aubergine');
insert into ingredients (id, name) values ('87f4672e-1bcd-4cc8-adce-88911b6bc8a3', 'roasted red peppers');
insert into ingredients (id, name) values ('76ec6d4f-c083-4303-8acf-d45ac1fadefe', 'harissa hot sauce');
insert into ingredients (id, name) values ('8c10ced9-0397-4b89-a693-40c00577d524', 'roast lamb');
insert into ingredients (id, name) values ('fe564543-aafc-4165-a2a4-6e60db29533d', 'feta');
insert into ingredients (id, name) values ('061e6cad-830e-460e-a0d7-23ec3b04fc33', 'pomegranate');
insert into ingredients (id, name) values ('ee8560de-a5d0-4aaf-8f64-d6b796338af9', 'tzatziki yoghurt');
insert into ingredients (id, name) values ('13592100-1917-435e-9abc-be4af3a33d78', 'bresaola');

--Marinara
insert into pizza_ingredients (pizza_id, ingredients_id) values ('325979eb-9938-4c9d-9109-a6aa43e92cd6', '0de91c24-c35a-4e11-8212-b54d1ce0669d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('325979eb-9938-4c9d-9109-a6aa43e92cd6', '96769f1d-6361-44dc-a34f-5f091afbc507');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('325979eb-9938-4c9d-9109-a6aa43e92cd6', 'c7eb3020-f7c3-4046-a2a5-818b5476803e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('325979eb-9938-4c9d-9109-a6aa43e92cd6', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Margherita
insert into pizza_ingredients (pizza_id, ingredients_id) values ('6c77c820-17f1-4ae9-96fe-8f42baf9689c', 'b00956b0-e19c-4327-b84b-51a66b06d84c');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('6c77c820-17f1-4ae9-96fe-8f42baf9689c', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('6c77c820-17f1-4ae9-96fe-8f42baf9689c', 'e5672f3e-e870-4605-aca4-a0a18c89801e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('6c77c820-17f1-4ae9-96fe-8f42baf9689c', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Margherita buffalo
insert into pizza_ingredients (pizza_id, ingredients_id) values ('19dc9b10-e6c4-493d-a382-f5663faf3d8a', 'b00956b0-e19c-4327-b84b-51a66b06d84c');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('19dc9b10-e6c4-493d-a382-f5663faf3d8a', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('19dc9b10-e6c4-493d-a382-f5663faf3d8a', 'b1932714-185a-4b05-a2b7-1a6c67bc1668');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('19dc9b10-e6c4-493d-a382-f5663faf3d8a', 'e5672f3e-e870-4605-aca4-a0a18c89801e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('19dc9b10-e6c4-493d-a382-f5663faf3d8a', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Diavola
insert into pizza_ingredients (pizza_id, ingredients_id) values ('407faec1-a90c-4f5c-a53c-65187b986e33', '0de91c24-c35a-4e11-8212-b54d1ce0669d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('407faec1-a90c-4f5c-a53c-65187b986e33', '18b1553d-6a17-4ef3-b02c-4e6a347b3ed4');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('407faec1-a90c-4f5c-a53c-65187b986e33', 'b9364753-ef08-4d95-bbb9-c1d9d60190d8');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('407faec1-a90c-4f5c-a53c-65187b986e33', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('407faec1-a90c-4f5c-a53c-65187b986e33', 'e5672f3e-e870-4605-aca4-a0a18c89801e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('407faec1-a90c-4f5c-a53c-65187b986e33', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Capricciosa
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', '0de91c24-c35a-4e11-8212-b54d1ce0669d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', '00d14a16-c9f1-4434-97c2-8c9b0d49b178');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', 'c94c1764-94e4-4457-9f0d-9c0f2a630d62');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', 'aa0dc2ed-6308-495b-b0ca-9560ab29cf4e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', 'c684846e-9fea-408a-899d-baeb201fcb5d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', '4111478f-c643-4f62-a140-c1b1586b034c');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', 'e5672f3e-e870-4605-aca4-a0a18c89801e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8ac2e2d6-fa4a-4201-8c86-405079ee5d38', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Nduja
insert into pizza_ingredients (pizza_id, ingredients_id) values ('591a3a60-c1bb-4190-87b5-b4b1e9a1d0f6', 'e03a2626-9b1f-4395-a6d7-041df6a2341d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('591a3a60-c1bb-4190-87b5-b4b1e9a1d0f6', '19d52d96-bf96-41be-89f0-41ba849917da');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('591a3a60-c1bb-4190-87b5-b4b1e9a1d0f6', '3d683f20-59ad-4302-b989-47c86c964f35');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('591a3a60-c1bb-4190-87b5-b4b1e9a1d0f6', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('591a3a60-c1bb-4190-87b5-b4b1e9a1d0f6', 'e5672f3e-e870-4605-aca4-a0a18c89801e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('591a3a60-c1bb-4190-87b5-b4b1e9a1d0f6', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Napoletana
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1b0e450d-ef11-46e4-be35-ca653144dec0', 'e03a2626-9b1f-4395-a6d7-041df6a2341d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1b0e450d-ef11-46e4-be35-ca653144dec0', '0164f722-3679-428f-b89c-282ddcac2201');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1b0e450d-ef11-46e4-be35-ca653144dec0', '4111478f-c643-4f62-a140-c1b1586b034c');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1b0e450d-ef11-46e4-be35-ca653144dec0', '7eb9830a-3eb1-4e68-a4be-6c84b90a18ae');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1b0e450d-ef11-46e4-be35-ca653144dec0', '96769f1d-6361-44dc-a34f-5f091afbc507');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1b0e450d-ef11-46e4-be35-ca653144dec0', 'c7eb3020-f7c3-4046-a2a5-818b5476803e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1b0e450d-ef11-46e4-be35-ca653144dec0', 'b00956b0-e19c-4327-b84b-51a66b06d84c');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1b0e450d-ef11-46e4-be35-ca653144dec0', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Quattro formaggi
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8c8f6adb-1a26-4169-83ea-f4bd92f02821', '86f7ce89-e7df-488e-b227-f5481ef95dff');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8c8f6adb-1a26-4169-83ea-f4bd92f02821', '684334c3-f510-4695-92ba-9fa71674e0a8');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8c8f6adb-1a26-4169-83ea-f4bd92f02821', '659cc506-303d-4644-a0f7-c03858781cad');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8c8f6adb-1a26-4169-83ea-f4bd92f02821', 'e5672f3e-e870-4605-aca4-a0a18c89801e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8c8f6adb-1a26-4169-83ea-f4bd92f02821', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8c8f6adb-1a26-4169-83ea-f4bd92f02821', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Santa carla
insert into pizza_ingredients (pizza_id, ingredients_id) values ('96a4bf74-36d1-4f9f-9fe3-9e9880b81a01', 'b1932714-185a-4b05-a2b7-1a6c67bc1668');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('96a4bf74-36d1-4f9f-9fe3-9e9880b81a01', '4a47c51a-adc2-4ca9-8228-66d26342c62f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('96a4bf74-36d1-4f9f-9fe3-9e9880b81a01', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Fangs for the memories
insert into pizza_ingredients (pizza_id, ingredients_id) values ('eca5a66a-3e4f-40ca-8868-df3255aec328', '40a6f21e-3d67-4789-a4a4-8d94f7fc88cf');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('eca5a66a-3e4f-40ca-8868-df3255aec328', '3d683f20-59ad-4302-b989-47c86c964f35');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('eca5a66a-3e4f-40ca-8868-df3255aec328', 'ce7311d0-bb1b-4521-a7af-ddae70d8a4d8');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('eca5a66a-3e4f-40ca-8868-df3255aec328', '4a336dff-f36b-4245-a242-acb57ad97d23');

--You killed Marco Polo
insert into pizza_ingredients (pizza_id, ingredients_id) values ('819dfcde-7852-4261-9b9f-7ec6cf94524e', 'fe1eb16a-f19a-47fe-8eba-a9a5e1e218c8');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('819dfcde-7852-4261-9b9f-7ec6cf94524e', '3d683f20-59ad-4302-b989-47c86c964f35');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('819dfcde-7852-4261-9b9f-7ec6cf94524e', 'ce7311d0-bb1b-4521-a7af-ddae70d8a4d8');

--Pops go to the pizza
insert into pizza_ingredients (pizza_id, ingredients_id) values ('902a1bc1-2799-4764-9737-25f09ac5e21e', 'fe1eb16a-f19a-47fe-8eba-a9a5e1e218c8');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('902a1bc1-2799-4764-9737-25f09ac5e21e', '56524baf-253d-4bd7-80dc-ea6a21744a77');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('902a1bc1-2799-4764-9737-25f09ac5e21e', 'e5672f3e-e870-4605-aca4-a0a18c89801e');

--Have you seen lady
insert into pizza_ingredients (pizza_id, ingredients_id) values ('d64880f0-ff25-4e60-af72-6bc14b77fec0', '00d14a16-c9f1-4434-97c2-8c9b0d49b178');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('d64880f0-ff25-4e60-af72-6bc14b77fec0', '40a6f21e-3d67-4789-a4a4-8d94f7fc88cf');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('d64880f0-ff25-4e60-af72-6bc14b77fec0', '42bdefe1-fbb5-47e7-a74e-17619aa96a8b');

--Death
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b16933c-0265-4c8e-8736-6fb861298e00', '0164f722-3679-428f-b89c-282ddcac2201');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b16933c-0265-4c8e-8736-6fb861298e00', '3d683f20-59ad-4302-b989-47c86c964f35');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b16933c-0265-4c8e-8736-6fb861298e00', '6964aa44-4de6-404e-bf01-391c651d88a7');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b16933c-0265-4c8e-8736-6fb861298e00', '4a336dff-f36b-4245-a242-acb57ad97d23');

--Salsiccia bianka
insert into pizza_ingredients (pizza_id, ingredients_id) values ('990e3688-a6aa-47e2-88d9-600504c2ecd4', 'f2c3179b-0e07-4317-90cd-3641bb57dfe7');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('990e3688-a6aa-47e2-88d9-600504c2ecd4', 'aa0dc2ed-6308-495b-b0ca-9560ab29cf4e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('990e3688-a6aa-47e2-88d9-600504c2ecd4', 'b1932714-185a-4b05-a2b7-1a6c67bc1668');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('990e3688-a6aa-47e2-88d9-600504c2ecd4', '8cf05bb8-49e4-487e-a086-eb94cdd775ce');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('990e3688-a6aa-47e2-88d9-600504c2ecd4', 'e5672f3e-e870-4605-aca4-a0a18c89801e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('990e3688-a6aa-47e2-88d9-600504c2ecd4', 'b00956b0-e19c-4327-b84b-51a66b06d84c');

--Florentina ricotta
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', '98d9c351-3e1b-477a-b73a-d6a09c165e06');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', '8842426f-0ba9-46b3-8f6e-d0abc333d15f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', '3bbabff3-464b-4b18-a4c1-d5cdfd26c034');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', '6964aa44-4de6-404e-bf01-391c651d88a7');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', '0de91c24-c35a-4e11-8212-b54d1ce0669d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', '6719234a-84b7-45ec-a52f-e4856ad25cef');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', 'b1932714-185a-4b05-a2b7-1a6c67bc1668');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8e4f40f4-ba91-4400-a091-ed0255fffa15', 'e5672f3e-e870-4605-aca4-a0a18c89801e');

--Bresaola rucola
insert into pizza_ingredients (pizza_id, ingredients_id) values ('909dfd93-a115-4c49-b732-5b33c07582bb', '60bab33d-f5ec-4494-9b30-facc0a805e92');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('909dfd93-a115-4c49-b732-5b33c07582bb', '4a47c51a-adc2-4ca9-8228-66d26342c62f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('909dfd93-a115-4c49-b732-5b33c07582bb', '6964aa44-4de6-404e-bf01-391c651d88a7');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('909dfd93-a115-4c49-b732-5b33c07582bb', 'b1932714-185a-4b05-a2b7-1a6c67bc1668');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('909dfd93-a115-4c49-b732-5b33c07582bb', '8842426f-0ba9-46b3-8f6e-d0abc333d15f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('909dfd93-a115-4c49-b732-5b33c07582bb', 'bba58f94-c5a5-4a30-a2ad-f9400278b045');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('909dfd93-a115-4c49-b732-5b33c07582bb', 'e5672f3e-e870-4605-aca4-a0a18c89801e');

--Superbiotica
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1dbc3d7f-7512-41f3-b3c7-1d07ebad557e', '197b5ebe-21bd-4a36-8124-2dff4050ab82');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1dbc3d7f-7512-41f3-b3c7-1d07ebad557e', '81fbcd12-a820-44d2-86d5-141a1781d33a');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1dbc3d7f-7512-41f3-b3c7-1d07ebad557e', '98d9c351-3e1b-477a-b73a-d6a09c165e06');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1dbc3d7f-7512-41f3-b3c7-1d07ebad557e', '3d683f20-59ad-4302-b989-47c86c964f35');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1dbc3d7f-7512-41f3-b3c7-1d07ebad557e', 'aa0dc2ed-6308-495b-b0ca-9560ab29cf4e');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1dbc3d7f-7512-41f3-b3c7-1d07ebad557e', '42bdefe1-fbb5-47e7-a74e-17619aa96a8b');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('1dbc3d7f-7512-41f3-b3c7-1d07ebad557e', '50b32fd6-47d5-4edc-8f1b-b57d1df743ae');

--Truffle fungo
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b3e1601-6367-455a-b047-3da0090c31cd', 'f9596825-96d2-4129-a148-3637034dcdb6');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b3e1601-6367-455a-b047-3da0090c31cd', 'ce7311d0-bb1b-4521-a7af-ddae70d8a4d8');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b3e1601-6367-455a-b047-3da0090c31cd', '42bdefe1-fbb5-47e7-a74e-17619aa96a8b');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b3e1601-6367-455a-b047-3da0090c31cd', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b3e1601-6367-455a-b047-3da0090c31cd', '8842426f-0ba9-46b3-8f6e-d0abc333d15f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('0b3e1601-6367-455a-b047-3da0090c31cd', 'bba58f94-c5a5-4a30-a2ad-f9400278b045');

--Pepperoni
insert into pizza_ingredients (pizza_id, ingredients_id) values ('71456279-6f74-450e-aad6-eb7a3aa94a37', 'a64ac330-53d2-4f39-9826-e7dbe2f16767');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('71456279-6f74-450e-aad6-eb7a3aa94a37', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('71456279-6f74-450e-aad6-eb7a3aa94a37', 'af6b567b-28c0-4228-810d-a2e6c591d663');

--Pepperoni hot
insert into pizza_ingredients (pizza_id, ingredients_id) values ('85f52cdd-33f3-48ad-bba9-5bae04bf3a43', 'a64ac330-53d2-4f39-9826-e7dbe2f16767');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('85f52cdd-33f3-48ad-bba9-5bae04bf3a43', '3177e923-215d-44b4-a79c-fd09225c8a33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('85f52cdd-33f3-48ad-bba9-5bae04bf3a43', 'af6b567b-28c0-4228-810d-a2e6c591d663');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('85f52cdd-33f3-48ad-bba9-5bae04bf3a43', 'f6dfd96f-6448-452f-ac69-25c80cdcc3dd');

--Aubergine parmigana
insert into pizza_ingredients (pizza_id, ingredients_id) values ('731f196b-71b2-48a9-9a9c-6268ca777ced', '4f5945cb-e5f6-4ede-83ca-88e9426962fe');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('731f196b-71b2-48a9-9a9c-6268ca777ced', '87f4672e-1bcd-4cc8-adce-88911b6bc8a3');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('731f196b-71b2-48a9-9a9c-6268ca777ced', '6964aa44-4de6-404e-bf01-391c651d88a7');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('731f196b-71b2-48a9-9a9c-6268ca777ced', '559ed45d-1abb-49b2-9866-90baf53d56f3');

--Italian sausage
insert into pizza_ingredients (pizza_id, ingredients_id) values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', 'cc3cb518-d7a1-49dd-b0f0-66c21f50301f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', 'bd279582-3b26-4ace-9586-1b2c75316c6f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', '6964aa44-4de6-404e-bf01-391c651d88a7');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', '50b32fd6-47d5-4edc-8f1b-b57d1df743ae');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', '4a47c51a-adc2-4ca9-8228-66d26342c62f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', 'b9364753-ef08-4d95-bbb9-c1d9d60190d8');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', '76ec6d4f-c083-4303-8acf-d45ac1fadefe');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('116e65ed-16a4-4024-9bbf-dfb1803284c5', '0de91c24-c35a-4e11-8212-b54d1ce0669d');

--Aegean lamb
insert into pizza_ingredients (pizza_id, ingredients_id) values ('f4a4b275-542a-4464-8316-07414c467062', '8c10ced9-0397-4b89-a693-40c00577d524');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('f4a4b275-542a-4464-8316-07414c467062', '0de91c24-c35a-4e11-8212-b54d1ce0669d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('f4a4b275-542a-4464-8316-07414c467062', 'bd279582-3b26-4ace-9586-1b2c75316c6f');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('f4a4b275-542a-4464-8316-07414c467062', '6964aa44-4de6-404e-bf01-391c651d88a7');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('f4a4b275-542a-4464-8316-07414c467062', 'fe564543-aafc-4165-a2a4-6e60db29533d');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('f4a4b275-542a-4464-8316-07414c467062', '061e6cad-830e-460e-a0d7-23ec3b04fc33');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('f4a4b275-542a-4464-8316-07414c467062', 'ee8560de-a5d0-4aaf-8f64-d6b796338af9');

--Carne mista
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8731bf22-1a3e-43bd-acb5-e6449c3fe384', '8c10ced9-0397-4b89-a693-40c00577d524');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8731bf22-1a3e-43bd-acb5-e6449c3fe384', '13592100-1917-435e-9abc-be4af3a33d78');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8731bf22-1a3e-43bd-acb5-e6449c3fe384', 'f2c3179b-0e07-4317-90cd-3641bb57dfe7');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8731bf22-1a3e-43bd-acb5-e6449c3fe384', 'fe1eb16a-f19a-47fe-8eba-a9a5e1e218c8');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8731bf22-1a3e-43bd-acb5-e6449c3fe384', 'a64ac330-53d2-4f39-9826-e7dbe2f16767');
insert into pizza_ingredients (pizza_id, ingredients_id) values ('8731bf22-1a3e-43bd-acb5-e6449c3fe384', 'af6b567b-28c0-4228-810d-a2e6c591d663');

-- customer
--insert into customer (id, name, phoneNumber, review, pizzeria_id, pizza_id)
--    values ('7053251c-d962-43f2-907a-295efc06b4e3', 'Joe Biden', '+1 111 111 11 11', 'It was one of the best pizzas in my life.!', 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7', '116e65ed-16a4-4024-9bbf-dfb1803284c5');
--insert into customer (id, name, phoneNumber, review, pizzeria_id, pizza_id)
--    values ('f3859a2e-9092-445c-8d5e-5f0c8bba4601', 'Olaf Scholz', '+49 999 999 99 99', 'Es war eine fantastische Pizza!!', 'cd6a9cff-9e83-4438-aaea-81b98c79e9c7', '0b3e1601-6367-455a-b047-3da0090c31cd');
--insert into customer (id, name, phoneNumber, review, pizzeria_id, pizza_id)
--    values ('19de046d-b079-4682-bded-a45cc855bb07', 'Emmanuel Macron', '+33 333 33 33 33', 'Très bien. Mais les meilleures pizzas sont toujours françaises', '78857ae2-22d4-4725-b27d-c3c9943a5aab', '19dc9b10-e6c4-493d-a382-f5663faf3d8a');