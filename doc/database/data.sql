;             
CREATE USER IF NOT EXISTS DECODER SALT '8a3b5eb515a20645' HASH 'db59d036eb036765678a6fbfacda4642062f41e0ffd4f231b5085ada3c4f92cd' ADMIN;      
CREATE CACHED TABLE PUBLIC.WMI_REGION(
    NAME VARCHAR(255) NOT NULL,
    WMIREGEX VARCHAR(255) NOT NULL,
    UUID VARCHAR(255) NOT NULL
);              
ALTER TABLE PUBLIC.WMI_REGION ADD CONSTRAINT PUBLIC.CONSTRAINT_6 PRIMARY KEY(UUID);           
-- 24 +/- SELECT COUNT(*) FROM PUBLIC.WMI_REGION;             
INSERT INTO PUBLIC.WMI_REGION(NAME, WMIREGEX, UUID) VALUES
('Africa', '[A-H]', 'da01b94b-34cc-4d19-89cb-78b1d470d60c'),
('Asia', '[J-R]', 'bca66f90-e898-4531-a9ef-278eb6223bb1'),
('Europe', '[S-Z]', 'dc88dce8-723a-400b-adc1-dcc1f11038e2'),
('North America', '[1-5]', '27174ac0-f931-4f85-bd6e-49e5bbc05f0e'),
('Oceania', '[6-7]', 'a16143cb-2118-4fad-bdaa-590d135168cc'),
('South America', '[890]', '79a5ca45-d3e2-42d6-a6a9-9d90ca1ad291'),
('Africa', '[A-H]', 'a3c9eb58-3f1d-4973-a83e-f7d07139b214'),
('Asia', '[J-R]', 'dd532772-c203-4161-b967-5d3c9019d861'),
('Europe', '[S-Z]', '0aee6bf6-c960-4fa3-b805-599a77e73a05'),
('North America', '[1-5]', '2019720e-cdaa-4be6-a3ac-2fde14523db2'),
('Oceania', '[6-7]', '45b35567-7861-4000-8e9d-bc672c33fbae'),
('South America', '[890]', '8fb2be51-b728-4023-b4b4-dbdea0d3ed31'),
('Africa', '[A-H]', '5d2f0cef-ed60-4c7a-b8d6-8abf51466e18'),
('Asia', '[J-R]', 'b0a87ed0-bbcf-4672-b1d3-f0d1aafdc3a1'),
('Europe', '[S-Z]', '61fc6bb9-f0bc-40c2-b293-76f74069a03e'),
('North America', '[1-5]', '64964ccf-cc08-4640-bb28-7adbbbe6f04e'),
('Oceania', '[6-7]', 'c6a2bfec-58ae-42b5-ba68-344a33aec946'),
('South America', '[890]', '4b5360f5-7352-47fd-ad30-eb78a0f71bdd'),
('Africa', '[A-H]', '43d30a5f-772f-4b7c-b472-e2e2c47e01fc'),
('Asia', '[J-R]', '3006ecce-6192-45ab-815d-c5b4495b1a87'),
('Europe', '[S-Z]', '39cfb76a-50cd-48ef-a876-fca8688b5695'),
('North America', '[1-5]', '39ffe7d5-81e0-44b9-a74d-3e33eaa15c35'),
('Oceania', '[6-7]', 'c242bf14-5486-4ab2-a7e2-67e72616f23e'),
('South America', '[890]', '52314b3f-aaf5-4e7a-b3c5-a31c2e01ccb7');
CREATE CACHED TABLE PUBLIC.WMI_COUNTRY(
    NAME VARCHAR(255) NOT NULL,
    PREFIXREGEX VARCHAR(255) NOT NULL,
    SUFFIXREGEX VARCHAR(255) NOT NULL,
    UUID VARCHAR(255) NOT NULL
);  
ALTER TABLE PUBLIC.WMI_COUNTRY ADD CONSTRAINT PUBLIC.CONSTRAINT_4 PRIMARY KEY(UUID);          
-- 424 +/- SELECT COUNT(*) FROM PUBLIC.WMI_COUNTRY;           
INSERT INTO PUBLIC.WMI_COUNTRY(NAME, PREFIXREGEX, SUFFIXREGEX, UUID) VALUES
('SouthAfrica', '[A]', '[A-H]', '8b967a37-f89c-47d5-93c7-42cc112a19fb'),
('South Africa', '[A]', '[A-H]', '9f68cdd3-520c-4599-91a2-3e04575f65d3'),
('Ivory Coast', '[A]', '[J-N]', '9787a4c6-6a70-4cca-b8d0-e759fcc672bf'),
('Africa', '[A]', '[P-Z0-9]', '6794b62a-5fbc-4e50-a17a-c75b4b8971f5'),
('Africa', '[B-D]', '[S-Z0-9]', '7f53a185-1425-4f13-8124-f1585a5ceae9'),
('Africa', '[E-F]', '[L-Z0-9]', '7d7e6311-ee80-4034-977a-b7ccf64bfe9c'),
('Africa', '[G-H]', '[A-Z0-9]', '5e41bc85-94e5-49f5-b95f-157b953469ea'),
('Angola', '[B]', '[A-E]', 'c8103489-3e68-4e73-ba59-8738ac805f01'),
('Kenya', '[B]', '[F-K]', '5f88c83c-b4bf-4d04-aaeb-67d810985773'),
('Tanzania', '[B]', '[L-R]', 'dfd9a5dd-1e71-43aa-a13a-46461487a6fe'),
('Benin', '[C]', '[A-E]', '8654d2d0-436d-4d27-982d-887d235af841'),
('Madagascar', '[C]', '[F-K]', '59927500-2695-420a-804c-c17d05efd4a3'),
('Tunisia', '[C]', '[L-R]', '5a5721d3-6326-427f-90a1-cc1a3d49af69'),
('Egypt', '[D]', '[A-E]', '92a696eb-f559-4dfa-8976-fafe3d847748'),
('Morocco', '[D]', '[F-H]', '2026db59-756c-4423-a953-084341f76285'),
('Zambia', '[D]', '[L-R]', '9b7aa81e-fc8c-4ac8-a789-7c6a10433d7f'),
('Ghana', '[E]', '[A-E]', 'a35ae80d-7a23-46f8-bda4-6481f063c147'),
('Mozambique', '[E]', '[F-H]', '4db630c3-b49c-4dad-8c92-9be795ec4648'),
('India', '[F]', '[A-E]', 'bbf791d0-cbf2-4b28-ad3f-8aee234a7dc2'),
('India', '[M]', '[A-E]', '58b47977-a075-4e62-8269-5aae8e495831'),
('Nigeria', '[F]', '[F-K]', '443ef4d1-af1a-49ba-b5f7-dde38685767a'),
('Japan', '[A]', '[A-Z0-9]', 'e7185a3c-a1f2-41bf-86d5-cfacf27ff158'),
('Sri Lanka', '[A]', '[A-E]', 'b0a0ccf4-69bd-457f-baae-fdafa75641ce'),
('Israel', '[K]', '[F-K]', '21fb012c-d675-4866-9429-768f00347d58'),
('South Korea', '[K]', '[L-R]', '5448e543-0126-4601-8556-99f59aad854f'),
('Kazakhstan', '[K]', '[S-Z0-9]', '03ba9770-a11f-493f-8a29-8969676d28c6'),
('China', '[L]', '[A-Z0-9]', '4a32d76d-0f76-4989-816d-f579bb4c307a'),
('Indonesia', '[M]', '[F-K]', 'e24fdc35-048e-4983-b7d5-40750c6a9729'),
('Thailand', '[M]', '[L-R]', '918c5a4d-2e92-4c2b-833b-143523de8ba4'),
('Iran', '[N]', '[A-E]', 'c83f2d18-4dd1-46d4-adbe-1d3dec83c9b0'),
('Pakistan', '[N]', '[F-K]', 'b32bb1f4-088e-469b-8e58-d1cfc6c7c8d6'),
('Turkey', '[N]', '[L-R]', 'f47f3a06-178d-473c-a644-1863fe9ef5c6'),
('Pakistan', '[N]', '[F-K]', '4665dc56-67d2-495e-95e8-bc8026df8f97'),
('Asia', '[M-P]', '[S-Z0-9]', 'b6609391-3dbb-40b7-ab54-8f5f0ce1deb9'),
('Philippines', '[P]', '[A-E]', '852229af-338d-4e40-895b-197d7d8f6aed'),
('Singapore', '[P]', '[F-K]', '0fb69ec4-45e9-402d-96cd-3835bd8b76c1'),
('Malaysia', '[N]', '[L-R]', 'bc6380bd-5702-4862-99c4-526f9447c8e5'),
('UAE', '[P]', '[A-E]', '70cd60f9-5d52-4a2b-91d0-69d20b213f08'),
('Taiwan', '[R]', '[F-K]', 'd2f66469-2733-4c53-88a2-f3194deaaf4c'),
('Vietnam', '[R]', '[L-R]', 'f1e1ff01-c296-46dd-b19c-b4223d953c30'),
('Saudi Arabia', '[R]', '[S-Z0-9]', '0d273f7b-b875-4c23-b0ba-8e90a81c5127'),
('United Kingdom', '[S]', '[A-M]', 'a9df86f8-c1a2-431c-9019-8aad3d00a9a9'),
('East Germany', '[S]', '[N-T]', '8c7e9e2c-a2bc-4232-9b51-5b5bff237a36'),
('Poland', '[S]', '[U-Z]', 'f56013fd-a356-4659-865b-10b87df5beed'),
('Latvia', '[S]', '[1-4]', 'f7f15a98-87e2-4b2b-8416-f05845f7a7e1'),
('Europe', '[S]', '[5-90]', '0d2b4b93-e916-42fd-bda4-b645d7c8ed03'),
('Europe', '[T]', '[2-90]', '9737f77d-3a08-4a0a-bfa5-14a9bb11d75d'),
('Europe', '[U]', '[A-G]', '3fe21eb5-0eec-45ad-a21f-890f16220c4f'),
('Europe', '[U]', '[1-4]', '86c184ad-5f1a-419a-8fed-4a449871a1ed'),
('Europe', '[U]', '[8-90]', '0b0d96a9-7edb-4b56-9b8b-f6cff6960f51'),
('Europe', '[Z]', '[S-W]', '28d2de43-6a2c-401c-b4dd-d2606f3f04c9'),
('Europe', '[Z]', '[6-90]', '525b1a3f-8b5c-4f87-957e-336f94522938'),
('Switzerland', '[T]', '[A-H]', '00b079a7-5db5-45f5-b516-91fd981b8d83'),
('Czech Republic', '[T]', '[J-P]', 'f6234f6b-cb8d-4fc0-8cb2-2d72175a5fe2'),
('Hungary', '[T]', '[R-V]', '4e3ad64b-9a5a-47d2-a352-430293678125'),
('Portugal', '[T]', '[W-Z1]', '0f3fbed7-32b9-4a37-b876-eae22cb7437b'),
('Denmark', '[U]', '[H-M]', '0a994af2-21b1-461d-bc1c-03cc63a9d50f'),
('Ireland', '[U]', '[N-T]', '65d8699d-1d79-43d1-8dcd-b14f7db0bc69');     
INSERT INTO PUBLIC.WMI_COUNTRY(NAME, PREFIXREGEX, SUFFIXREGEX, UUID) VALUES
('Romania', '[U]', '[U-Z]', '0bd45c1e-b000-4c41-abbe-71edf73a1493'),
('Slovakia', '[U]', '[5-7]', 'cf9e1beb-9462-4c5a-a0a1-84045b6e1c49'),
('Austria', '[V]', '[A-E]', 'b6874d59-7507-46d5-be8d-8f93165a2bc6'),
('France', '[V]', '[F-R]', 'd31ecded-cf54-497a-ab00-54ed0f3880ae'),
('Spain', '[V]', '[S-W]', '7415084c-e16c-42a6-a75f-7b5bb73758b7'),
('Serbia', '[V]', '[X-Z1-2]', '469f51c1-fbb0-40f5-91a6-c6867e7a5218'),
('Croatia', '[V]', '[3-5]', 'c04ce93c-d83c-4d6e-a8c9-5cf9cbaf105c'),
('Estonia', '[V]', '[6-90]', 'c1d60981-3862-495e-9737-dfb0bf525186'),
('Germany', '[W]', '[A-Z0-9]', '8e5845a9-b43f-4444-b530-36940a043cad'),
('Bulgaria', '[X]', '[A-E]', '719093ea-d0a5-43e8-8a3f-d111a8a55feb'),
('Greece', '[X]', '[F-K]', '1ba260f1-dd1d-4f3c-8774-7d5f593cf817'),
('Netherlands', '[X]', '[L-R]', '4d95755b-664d-4be6-a74c-000d2bf65ba2'),
('USSR', '[X]', '[S-W]', 'cbfc5591-e5b5-4e8c-931a-bf6499372478'),
('Luxembourg', '[X]', '[X-Z1-2]', '78e7318c-904d-4202-a366-52c4ab470732'),
('Russia', '[X]', '[3-90]', 'def96f3b-8611-4390-bc5f-7c97a7599e4c'),
('Belgium', '[Y]', '[A-E]', 'a1a6e69b-cfca-4d8c-8327-f5d067a177a7'),
('Finland', '[Y]', '[F-K]', '458bcdd5-e94a-450c-8637-ae74b44b6029'),
('Malta', '[Y]', '[L-R]', '2fec9185-e0bb-45f6-b962-cf191a29a5c4'),
('Sweden', '[Y]', '[S-W]', '20cd444b-12a2-4191-9c7d-383cc3ab20f6'),
('Norway', '[Y]', '[X-Z1-2]', 'b0624b67-9e1b-488d-ba7c-723dd82acf94'),
('Belarus', '[Y]', '[3-5]', '44ebceb0-5e08-4bfd-b124-771577aa20ab'),
('Ukraine', '[Y]', '[6-90]', '87fa84ef-98e7-4209-8da6-eb8bb2d9b275'),
('Italy', '[Y]', '[A-R]', 'c3a821a7-a564-4402-962d-4891a8bc243c'),
('Slovenia', '[Z]', '[X-Z1-2]', 'b06956bd-8df6-4304-9c0b-1746f27a7325'),
('Lithuania', '[Z]', '[3-5]', '81a769bf-ae35-439a-bf74-dd06f9499ce1'),
('United States', '[1]', '[A-Z0-9]', '1534c6e1-479d-4c26-8828-48d2e4947c8f'),
('United States', '[4]', '[A-Z0-9]', '74c4c9dd-20a9-47eb-bd55-02741484a568'),
('United States', '[5]', '[A-Z0-9]', 'ecc3e9fa-1c87-4f5b-9014-81420c003ab0'),
('Canada', '[2]', '[A-Z0-9]', 'c081eb4f-21b0-473c-8e1c-e42b4c55c112'),
('Mexico', '[3]', '[A-Z0-9]', '355f8472-190f-4cf3-a4a1-bd8cc8cbabb0'),
('Australia', '[6]', '[A-W]', 'cf6f44e4-b32f-469c-b4a4-df52ed00c1dd'),
('Oceania', '[6]', '[X-Z0-9]', 'd8328881-4ad9-4175-938d-221a234f4007'),
('Oceania', '[7]', '[F-Z0-9]', '17584f27-ab94-47c6-b7c1-95326aaa05e0'),
('New Zealand', '[7]', '[A-E]', '1fc8d77e-666f-4f66-80e7-fcd843e1408f'),
('Argentina', '[8]', '[A-E]', '59986d4d-c75a-40d9-a1e8-f9d5657cf251'),
('Chile', '[8]', '[F-K]', 'c72875bc-3436-4165-a547-772b64fa3aa0'),
('Ecuador', '[8]', '[L-R]', '7381d84a-ec08-4831-8bef-5660dfec1839'),
('Peru', '[8]', '[S-W]', '68270f9e-d153-4b66-8fb1-74a19c88bdef'),
('Venezuela', '[8]', '[X-Z1-2]', '1423ea58-6266-4a21-9e4b-28ee86f1f5b7'),
('South America', '[8]', '[2-90]', '2a8e3d9f-4331-4339-9d8a-a9580a7ec5de'),
('South America', '[9]', '[0]', 'c501402b-0065-4d8a-8349-3a6cb1a078c9'),
('South America', '[0]', '[A-Z0-9]', 'e31176be-ac18-4202-b855-99816d8968af'),
('Brazil', '[9]', '[A-E]', '8bb3e5f3-b6c7-4252-84f5-455c7502f3bf'),
('Brazil', '[9]', '[3-9]', '900c0c54-197a-466e-8f9a-32a782ce04ed'),
('Colombia', '[9]', '[F-K]', 'f447519e-3a03-4f1b-aca4-ed6856ca63e4'),
('Paraguay', '[9]', '[L-R]', '20d59e4b-c8a7-431b-b0c0-e2327762d092'),
('Uruguay', '[9]', '[S-W]', '44bca801-12a6-4016-80cd-6a0a5071900a'),
('Trinidad Tobago', '[9]', '[X-Z1-2]', '672e246f-82d4-4ee8-86fd-cfcac14bc3a1'),
('SouthAfrica', '[A]', '[A-H]', '65fe13f4-a5bf-4c95-b988-6f8cfcd7489c'),
('South Africa', '[A]', '[A-H]', '91b5e2f3-7954-4ddd-a9d3-740aae761f76'),
('Ivory Coast', '[A]', '[J-N]', 'bb5af2fa-7fae-4785-8968-f2884376ac48'),
('Africa', '[A]', '[P-Z0-9]', 'edafc065-a862-4db6-8401-e1fbb7c19474'),
('Africa', '[B-D]', '[S-Z0-9]', '22b43494-bb76-42a5-901f-2f0e8c865af2'),
('Africa', '[E-F]', '[L-Z0-9]', '83b4a32a-1f1b-4b90-ae05-37797a5e7d3c'),
('Africa', '[G-H]', '[A-Z0-9]', 'fba98187-3050-44a7-8e03-7e46fb9a5f1b'),
('Angola', '[B]', '[A-E]', '4c170c22-771a-4ec2-86e0-d6fecbe869be'),
('Kenya', '[B]', '[F-K]', '95a68105-7d51-4543-9c91-c02a13d7407c');          
INSERT INTO PUBLIC.WMI_COUNTRY(NAME, PREFIXREGEX, SUFFIXREGEX, UUID) VALUES
('Tanzania', '[B]', '[L-R]', '3168fd00-cc2b-45e8-b6c0-81e0a3c916a9'),
('Benin', '[C]', '[A-E]', '86c34d9d-609c-4709-adf7-d776f8dfa573'),
('Madagascar', '[C]', '[F-K]', 'be167ffc-030c-45f4-ab73-e9a806664666'),
('Tunisia', '[C]', '[L-R]', 'f21264e5-f246-49d9-b02a-6a4005725380'),
('Egypt', '[D]', '[A-E]', 'f42b4acc-76ee-40e0-b251-69f90eec1574'),
('Morocco', '[D]', '[F-H]', '1d28c647-7a84-44c2-86e0-d46a79c1cfb8'),
('Zambia', '[D]', '[L-R]', '21a13037-5a8a-42ea-94b2-f512e912238e'),
('Ghana', '[E]', '[A-E]', '59e09020-f7ee-4844-ad78-5c601c0c0f4a'),
('Mozambique', '[E]', '[F-H]', '32433e82-0767-4591-8fa2-48803e91198b'),
('India', '[F]', '[A-E]', '855a206c-e593-428e-beb8-2236e70f8bda'),
('India', '[M]', '[A-E]', '4c01f760-7eb8-4b90-bf2e-de37ff2a39f0'),
('Nigeria', '[F]', '[F-K]', '9cfd18b2-2197-4a9e-832c-fd029ccae0f7'),
('Japan', '[A]', '[A-Z0-9]', '73984f01-31be-446e-8488-a2a2f2315df6'),
('Sri Lanka', '[A]', '[A-E]', 'ffb417ec-1451-40b7-839e-30770828527c'),
('Israel', '[K]', '[F-K]', '5f08ddef-18c6-441f-b3e1-c2caca6b3103'),
('South Korea', '[K]', '[L-R]', '24f4c389-ad68-4b31-9e79-df43272f1f3d'),
('Kazakhstan', '[K]', '[S-Z0-9]', '9f2587f9-e51e-4c1c-b825-cf5a3cd87a0e'),
('China', '[L]', '[A-Z0-9]', '85281a2d-6342-49d5-9523-1ceb1dede721'),
('Indonesia', '[M]', '[F-K]', '8e19be43-4994-4772-bae5-602185e8ba75'),
('Thailand', '[M]', '[L-R]', 'c3fc77c1-1148-4bc5-9d74-61aa9cdc7f75'),
('Iran', '[N]', '[A-E]', '232fe50a-3ad2-45da-8378-a4adee3355a0'),
('Pakistan', '[N]', '[F-K]', 'e8be8aff-ac39-4664-a2a6-0822855579a6'),
('Turkey', '[N]', '[L-R]', 'f56f1ef5-ed43-4de1-8e8e-7a69046a9bf6'),
('Pakistan', '[N]', '[F-K]', '6fb4de10-273a-4c46-9dc5-5fe82212a721'),
('Asia', '[M-P]', '[S-Z0-9]', '4dbe5ef1-e5b5-4c9c-a3d1-30feb0e2c337'),
('Philippines', '[P]', '[A-E]', 'fd294fb8-40d8-4be9-9821-c2d2acb48227'),
('Singapore', '[P]', '[F-K]', '237fa157-5d20-4428-901e-55055e05f1fb'),
('Malaysia', '[N]', '[L-R]', 'fb18cf41-6c87-4660-895a-d119c9dd513e'),
('UAE', '[P]', '[A-E]', 'bb3756ef-bc16-426c-a7b4-8d33497aab5f'),
('Taiwan', '[R]', '[F-K]', '1950f7a2-4cf2-43a4-b277-09de4feb508b'),
('Vietnam', '[R]', '[L-R]', 'd06ab50a-5ea6-4d01-98a0-1fbabec7e22b'),
('Saudi Arabia', '[R]', '[S-Z0-9]', '184632b3-2205-490c-b54a-62b6de856e2d'),
('United Kingdom', '[S]', '[A-M]', '765229b0-49d6-4898-83c9-12d2be335265'),
('East Germany', '[S]', '[N-T]', '6de19a83-dd6c-4ee6-b9a9-7c1e2250c720'),
('Poland', '[S]', '[U-Z]', '1f178448-4ad7-406d-9bdb-4773078df1ed'),
('Latvia', '[S]', '[1-4]', 'af30994b-d9fc-4b48-96aa-728df64c67cf'),
('Europe', '[S]', '[5-90]', '54c6828f-bd2f-42f3-88e7-98880548a518'),
('Europe', '[T]', '[2-90]', '59456c52-7aba-408b-9729-3ea44cab6407'),
('Europe', '[U]', '[A-G]', '1d0ccaa5-5a11-4609-9521-b3ff5501387b'),
('Europe', '[U]', '[1-4]', '6f591310-ce39-4a99-a8d3-531afea59584'),
('Europe', '[U]', '[8-90]', '65198594-8da2-49e1-9dfd-997e918b3aff'),
('Europe', '[Z]', '[S-W]', 'bcb70d49-b4ca-438d-b6f2-66d81616bd1a'),
('Europe', '[Z]', '[6-90]', 'acc5f96d-c4c2-4f00-8e03-325b245b9573'),
('Switzerland', '[T]', '[A-H]', '6e907ab7-73a4-46a6-81d3-2fd32d6b3c55'),
('Czech Republic', '[T]', '[J-P]', 'af565b4c-5ccf-40e2-8051-22359f6fa84e'),
('Hungary', '[T]', '[R-V]', '38a5dd6f-7679-4503-bce9-9402d78e2c3e'),
('Portugal', '[T]', '[W-Z1]', 'c8059384-6817-4a0d-a297-fbc7380ddd19'),
('Denmark', '[U]', '[H-M]', 'b4cb1242-ac0e-4913-a5e1-084fe1846cc4'),
('Ireland', '[U]', '[N-T]', '6a7ea5ff-cc48-4460-b51c-df6c28ae2d5f'),
('Romania', '[U]', '[U-Z]', '9ead110a-1d5c-45a6-84af-2e7d910d23a6'),
('Slovakia', '[U]', '[5-7]', 'ad008597-7923-4bee-975b-c25ef1f10894'),
('Austria', '[V]', '[A-E]', '42b00759-2e14-4936-ab39-f844db0b79a6'),
('France', '[V]', '[F-R]', 'f77364b6-f1a6-4c42-9d1f-161a2155deef'),
('Spain', '[V]', '[S-W]', '7f45fd98-6385-40fa-b44e-22a174372a27'),
('Serbia', '[V]', '[X-Z1-2]', '922c2e6f-3f95-4b24-8b26-b78701ecec50'),
('Croatia', '[V]', '[3-5]', '2252f1bf-3e99-4276-a429-72eec4148d24'),
('Estonia', '[V]', '[6-90]', 'b4af139d-f93e-4bdf-86d6-b282d38f8e2a'),
('Germany', '[W]', '[A-Z0-9]', '9e692877-58f9-41a9-be27-4f1af51f7112');         
INSERT INTO PUBLIC.WMI_COUNTRY(NAME, PREFIXREGEX, SUFFIXREGEX, UUID) VALUES
('Bulgaria', '[X]', '[A-E]', '9f26c1bd-43e7-4fbd-8b2a-74ecb5f872a6'),
('Greece', '[X]', '[F-K]', 'e99b0947-0d64-47fd-a739-eaa51bc17041'),
('Netherlands', '[X]', '[L-R]', '3ae1b3ad-e317-47ce-a686-a12373088f69'),
('USSR', '[X]', '[S-W]', '9ebbb271-11ee-445e-b3d1-ed51dbab5df1'),
('Luxembourg', '[X]', '[X-Z1-2]', '7469b401-c3d4-435b-a4a4-443af3018ca0'),
('Russia', '[X]', '[3-90]', '1ed5e637-e952-4699-af6f-d6ff119d78ce'),
('Belgium', '[Y]', '[A-E]', '4913e1ba-bc01-41fe-a5e6-a5adddadb9cf'),
('Finland', '[Y]', '[F-K]', '1f04858c-a024-47f6-aec0-6e7612361f25'),
('Malta', '[Y]', '[L-R]', '1d7cc68a-9239-4b64-872a-50768f93c058'),
('Sweden', '[Y]', '[S-W]', '221f7441-7373-4977-a5ed-b4075a48b816'),
('Norway', '[Y]', '[X-Z1-2]', '8b420e67-49bc-4bfc-be5f-10ddd0ccf5e7'),
('Belarus', '[Y]', '[3-5]', 'd8c3db4c-b99f-4792-bfea-e07909bd420d'),
('Ukraine', '[Y]', '[6-90]', 'f8436ab6-4e02-405e-b1a1-69041675c3de'),
('Italy', '[Y]', '[A-R]', 'd4d4edab-1a4b-4148-bdc8-249d7b3d4947'),
('Slovenia', '[Z]', '[X-Z1-2]', 'ece7fe0f-daf0-44fc-8e93-92e4135d3741'),
('Lithuania', '[Z]', '[3-5]', '3ecdafa6-eb2c-424f-ab81-55ddb33075e6'),
('United States', '[1]', '[A-Z0-9]', '5c2dc605-675a-4549-943b-40d041b20462'),
('United States', '[4]', '[A-Z0-9]', '0c04f3b7-adad-4ce8-a377-9138a20c3da5'),
('United States', '[5]', '[A-Z0-9]', '2d2c319e-27fc-4954-9953-e6cd86394ce2'),
('Canada', '[2]', '[A-Z0-9]', 'c216485f-49c8-4539-b095-bc3553745387'),
('Mexico', '[3]', '[A-Z0-9]', '93d1ceec-bf57-4f59-b81c-642933d708ba'),
('Australia', '[6]', '[A-W]', '3b7487ca-4e45-4dc2-ab2e-0350d2c1c29b'),
('Oceania', '[6]', '[X-Z0-9]', 'bd538754-7347-4f74-97bb-f1857f8b9ba9'),
('Oceania', '[7]', '[F-Z0-9]', 'f488242e-0bbc-41c6-9006-6b90477a82e1'),
('New Zealand', '[7]', '[A-E]', '6b1a9331-8293-4dab-8219-862692140e91'),
('Argentina', '[8]', '[A-E]', '7506b9c7-56e1-47dd-b669-64f0f4a0b4a9'),
('Chile', '[8]', '[F-K]', 'f48d6282-c2e1-4f92-9452-0afce90e8542'),
('Ecuador', '[8]', '[L-R]', 'e6d0935e-db89-46f1-b9ba-5aae939bab24'),
('Peru', '[8]', '[S-W]', '310aae0d-a4bf-4caa-8689-fea1555aafcc'),
('Venezuela', '[8]', '[X-Z1-2]', 'ec134e4f-3f20-4f7d-9660-673e0bf5d698'),
('South America', '[8]', '[2-90]', '65c41466-cb93-4216-aae2-eba668f3ee6f'),
('South America', '[9]', '[0]', 'b7c03bfe-7827-48c8-aa3b-139883e25ca2'),
('South America', '[0]', '[A-Z0-9]', 'dffe5bac-f933-400a-b663-3ba47648cf4f'),
('Brazil', '[9]', '[A-E]', '0a39b262-6bb5-45cc-9fc4-dcd34288e0de'),
('Brazil', '[9]', '[3-9]', '7c5d731b-77f3-4b37-ac45-37b48b7d792f'),
('Colombia', '[9]', '[F-K]', 'df65dbc0-e133-4041-8042-a6babbc97df8'),
('Paraguay', '[9]', '[L-R]', '84db94d4-7fc5-454a-a172-e781d6307ff6'),
('Uruguay', '[9]', '[S-W]', '8221839a-9292-45f5-bb8c-c3661ec495b4'),
('Trinidad Tobago', '[9]', '[X-Z1-2]', '79314d17-1b3c-47fc-a95b-e5618cfc4ea0'),
('SouthAfrica', '[A]', '[A-H]', 'd2e2115f-4061-4944-87c6-de8347ed4516'),
('South Africa', '[A]', '[A-H]', '613972bf-cbb9-4d9b-ac95-c5dad4de8ea3'),
('Ivory Coast', '[A]', '[J-N]', '76d6dff0-b590-4b0c-920f-7021459407cc'),
('Africa', '[A]', '[P-Z0-9]', '4a192c3f-9440-4e75-963a-066e31a47347'),
('Africa', '[B-D]', '[S-Z0-9]', '8ac2b29f-55e9-4083-853f-96cefe6f15f3'),
('Africa', '[E-F]', '[L-Z0-9]', 'e4956412-3760-49f0-b5e1-2b847a7c04da'),
('Africa', '[G-H]', '[A-Z0-9]', '22157fc8-4a10-4988-b797-25f9ac194186'),
('Angola', '[B]', '[A-E]', '959b05de-6eb6-49bf-9fb3-fc3891f2a1bf'),
('Kenya', '[B]', '[F-K]', 'c90ffd03-a42d-4740-a7fa-b3e888a007ba'),
('Tanzania', '[B]', '[L-R]', '19ff210e-4079-478b-88c6-048509ac372d'),
('Benin', '[C]', '[A-E]', '10f917de-8cc4-4223-b1b3-b4e29834dcad'),
('Madagascar', '[C]', '[F-K]', '81119a9e-551d-4eda-8a73-f6d32f740423'),
('Tunisia', '[C]', '[L-R]', 'e004ae68-7ed9-4e75-915e-79b6ede2550c'),
('Egypt', '[D]', '[A-E]', '3e5867e3-a1f0-4b31-8146-be741f85742b'),
('Morocco', '[D]', '[F-H]', '490a6d3e-f5af-45d3-b180-6a1cc9092dfb'),
('Zambia', '[D]', '[L-R]', '5c16bd00-9bd8-4512-8ce7-32d54cdaf5fe'),
('Ghana', '[E]', '[A-E]', '904a04ce-d5e2-493b-966b-172726faca37'),
('Mozambique', '[E]', '[F-H]', 'cf93ea9f-3f57-4aea-836e-a4ba1b795e11');              
INSERT INTO PUBLIC.WMI_COUNTRY(NAME, PREFIXREGEX, SUFFIXREGEX, UUID) VALUES
('India', '[F]', '[A-E]', 'ce9085b1-1275-4df3-a76a-5e4b07c4c193'),
('India', '[M]', '[A-E]', 'bfe131ef-7c22-42b9-8fc6-e5aa0be9a77b'),
('Nigeria', '[F]', '[F-K]', 'de7af570-e882-46b8-8bbc-845019406261'),
('Japan', '[A]', '[A-Z0-9]', '19947b36-06f0-4624-afd9-b8c678a03cc4'),
('Sri Lanka', '[A]', '[A-E]', '5c04a775-199b-4741-8131-5ef5271b7f0e'),
('Israel', '[K]', '[F-K]', '1d6fb6cf-6884-49dd-93bc-8ec8d14e2d01'),
('South Korea', '[K]', '[L-R]', '36ed5012-1325-4f94-9cf9-222ee5713f9f'),
('Kazakhstan', '[K]', '[S-Z0-9]', 'f287fcf5-bf50-4dbb-83a5-6073ab997373'),
('China', '[L]', '[A-Z0-9]', '3cca4e04-ddb9-4b8a-be61-f74398dcc7fb'),
('Indonesia', '[M]', '[F-K]', '471cac0b-5a36-4ddc-91a6-2f5a5f3f1a11'),
('Thailand', '[M]', '[L-R]', '260dbf2c-8bfb-471b-b5ff-bcbbd47dfd1c'),
('Iran', '[N]', '[A-E]', 'ab239329-ac5f-46ac-adbe-6ce12d73f003'),
('Pakistan', '[N]', '[F-K]', '60103ef4-cfb6-45a4-865b-9347592471e1'),
('Turkey', '[N]', '[L-R]', '3acd0ee3-4212-48d5-95ff-22c59b14db44'),
('Pakistan', '[N]', '[F-K]', '0020e50a-c5cf-416c-9e78-62679459a9c9'),
('Asia', '[M-P]', '[S-Z0-9]', '12239d51-b2ad-46cf-a687-643167e79c67'),
('Philippines', '[P]', '[A-E]', '9d92766f-8f6f-4f53-9cb1-a8007d3ac691'),
('Singapore', '[P]', '[F-K]', 'e6ec93d3-be11-4d97-b407-e415c99070a7'),
('Malaysia', '[N]', '[L-R]', '87f63ad3-3f7e-4761-b198-0aba8a8772bb'),
('UAE', '[P]', '[A-E]', '3d3cc743-fb57-4462-bbc0-42f5846acdce'),
('Taiwan', '[R]', '[F-K]', '5ebd7633-ca80-40b3-9523-c956d0f04ff1'),
('Vietnam', '[R]', '[L-R]', 'f64cc32b-964d-4ea4-b5dc-e4a441febe87'),
('Saudi Arabia', '[R]', '[S-Z0-9]', 'a628a2ad-fb9f-4abc-9462-bb42191d8798'),
('United Kingdom', '[S]', '[A-M]', '69e18e85-7ca6-45ba-afa3-7278ff2b6754'),
('East Germany', '[S]', '[N-T]', 'f387bc36-3bd4-4d14-971f-e6eba4535f32'),
('Poland', '[S]', '[U-Z]', '9922111d-75d8-4074-ab7b-e2e4012d4ac6'),
('Latvia', '[S]', '[1-4]', 'f98d0e1a-77c4-48fb-b6b0-c616bc1f0238'),
('Europe', '[S]', '[5-90]', 'e77f7708-371c-49f1-8db3-b9de43957c68'),
('Europe', '[T]', '[2-90]', 'b4f65f35-3642-4218-9a96-d47d411b76de'),
('Europe', '[U]', '[A-G]', '91e290ad-4260-4778-9b30-bb60c0eded9a'),
('Europe', '[U]', '[1-4]', '924b51d0-22c1-4f30-875d-ff52ddb116ee'),
('Europe', '[U]', '[8-90]', '3889321a-bf15-44cd-bd33-1d9848b097a4'),
('Europe', '[Z]', '[S-W]', '3090b835-7761-4bf6-b643-be74cc748efa'),
('Europe', '[Z]', '[6-90]', '5df2df2f-d873-4cac-882d-010091b0364c'),
('Switzerland', '[T]', '[A-H]', 'b64f3293-900c-4681-baf6-e37b623ecf9c'),
('Czech Republic', '[T]', '[J-P]', '635068c6-6181-4887-be4a-9d7630582b48'),
('Hungary', '[T]', '[R-V]', '24d29703-a5c4-4c53-9a17-d555696b253d'),
('Portugal', '[T]', '[W-Z1]', '5c356adf-0564-4f0d-8de8-99aa0808c113'),
('Denmark', '[U]', '[H-M]', 'ccdd44a6-5924-4704-b9be-f45d2a581e65'),
('Ireland', '[U]', '[N-T]', 'cb6cde3c-2de9-4c83-9c7a-990d15c7ad65'),
('Romania', '[U]', '[U-Z]', '6ec41e41-7917-4bb9-9c6d-90f2aba63464'),
('Slovakia', '[U]', '[5-7]', 'ef804278-4ecb-43a1-a2a0-70ad5e04fbf2'),
('Austria', '[V]', '[A-E]', 'eccb04ce-527d-42a1-9ffd-51d1529e6378'),
('France', '[V]', '[F-R]', '5b538502-86b2-46ec-9187-184b587b314a'),
('Spain', '[V]', '[S-W]', 'c179f231-bd63-44da-86c3-4d6c28b84dd1'),
('Serbia', '[V]', '[X-Z1-2]', 'a0fa1627-72b3-4115-92b8-26d0e5ae6951'),
('Croatia', '[V]', '[3-5]', 'bf569da9-c3bb-44b2-8a21-47f17246965a'),
('Estonia', '[V]', '[6-90]', '294009c3-5f6e-463c-abcb-ee37178eada0'),
('Germany', '[W]', '[A-Z0-9]', 'f596d78b-ef3e-4473-94ad-4c5302ac726c'),
('Bulgaria', '[X]', '[A-E]', 'cb50d8fe-f54a-4a6f-b763-36c764d262b6'),
('Greece', '[X]', '[F-K]', '04eada3b-39eb-4af7-acd3-83badc626402'),
('Netherlands', '[X]', '[L-R]', 'e662b028-26fd-41b2-9a53-9afc879b4d22'),
('USSR', '[X]', '[S-W]', 'b9ee3c8e-96a8-4123-b0dc-540578dcee90'),
('Luxembourg', '[X]', '[X-Z1-2]', '5be60e83-a2db-4ccf-9a91-153a408a16d5'),
('Russia', '[X]', '[3-90]', 'dfea9c16-0944-4690-bb1a-dc733f844837'),
('Belgium', '[Y]', '[A-E]', 'b6b54a5b-bc5b-4744-b73c-583a6eef4a40'),
('Finland', '[Y]', '[F-K]', 'ce5b2c01-ce36-4a55-a916-a69a916d47c0'),
('Malta', '[Y]', '[L-R]', '6999534f-00da-4387-9e97-d1e292ca8a86');    
INSERT INTO PUBLIC.WMI_COUNTRY(NAME, PREFIXREGEX, SUFFIXREGEX, UUID) VALUES
('Sweden', '[Y]', '[S-W]', 'b97be4e9-700d-4222-8767-4eb327de34ef'),
('Norway', '[Y]', '[X-Z1-2]', '4dc8b08a-9ae5-4db6-b18b-0b6de8602a3d'),
('Belarus', '[Y]', '[3-5]', '7035458a-0692-4bcc-9c42-4f467d45eeb3'),
('Ukraine', '[Y]', '[6-90]', 'c116fa18-8c49-4c1d-a050-d7efadc60a6b'),
('Italy', '[Y]', '[A-R]', '53c5803f-8ff1-4665-b35b-a3d7af614bd4'),
('Slovenia', '[Z]', '[X-Z1-2]', '4f0e7f64-c5ba-450a-b260-5718bae2ad91'),
('Lithuania', '[Z]', '[3-5]', 'c528765b-cd0b-4228-b931-088151f7ca5c'),
('United States', '[1]', '[A-Z0-9]', 'ad41125b-0a7f-4eb0-82e0-25f39aab8a9d'),
('United States', '[4]', '[A-Z0-9]', 'd5fde28c-21b4-4a30-b4f5-38fa0ad3312a'),
('United States', '[5]', '[A-Z0-9]', 'cd8b70a3-06d6-4a5a-a132-c8f0dd653085'),
('Canada', '[2]', '[A-Z0-9]', 'dd5df389-13e1-4ff4-8a94-c4e23bfad305'),
('Mexico', '[3]', '[A-Z0-9]', 'c98c5906-6909-4f61-875c-df7eb8a2ac47'),
('Australia', '[6]', '[A-W]', 'e9801c77-e901-49a8-974c-c6f6f236e096'),
('Oceania', '[6]', '[X-Z0-9]', '21e6ea91-8df3-40c1-b913-45e10abb5519'),
('Oceania', '[7]', '[F-Z0-9]', 'aab7b08d-b377-4fa1-927a-f81d9dc09ddf'),
('New Zealand', '[7]', '[A-E]', '86eda67c-8cd6-44fc-967a-5afd6196eb1c'),
('Argentina', '[8]', '[A-E]', '1813f64e-d064-4b65-ad62-fd661134dc6e'),
('Chile', '[8]', '[F-K]', 'eb19e97c-029e-40b7-af87-0c7e2836ac5f'),
('Ecuador', '[8]', '[L-R]', '13fa17ba-6928-4eae-8f36-00ff4cd5538a'),
('Peru', '[8]', '[S-W]', '15935b8b-5a9e-4204-9d06-5ea02e46dabe'),
('Venezuela', '[8]', '[X-Z1-2]', '3276bc96-cbed-4023-be44-7bc06f80d661'),
('South America', '[8]', '[2-90]', '776803a0-8cdc-45a7-a9b0-465bcb38d750'),
('South America', '[9]', '[0]', '6711c096-5ec3-4e01-a600-88d3a9c1bda8'),
('South America', '[0]', '[A-Z0-9]', '57e90d3a-953c-421a-9806-21261d4f615a'),
('Brazil', '[9]', '[A-E]', '5ccb0606-c56d-42dd-af9f-c87b2e27bd25'),
('Brazil', '[9]', '[3-9]', 'ed41431b-243d-4b74-8db4-8f2eea111611'),
('Colombia', '[9]', '[F-K]', 'e0f14360-581f-4dd2-8920-d371510f26e3'),
('Paraguay', '[9]', '[L-R]', '98af84a1-8299-4630-9628-a9aa2f8aeb33'),
('Uruguay', '[9]', '[S-W]', 'dd9f9422-085c-472a-af9e-08a984b7356d'),
('Trinidad Tobago', '[9]', '[X-Z1-2]', '0275c23a-8903-4633-9152-df663f744e06'),
('SouthAfrica', '[A]', '[A-H]', 'd8703467-5a50-4bc6-999e-759bdce0b947'),
('South Africa', '[A]', '[A-H]', 'c4bed613-172c-4c52-a235-a638132def01'),
('Ivory Coast', '[A]', '[J-N]', '86d5bd56-9c68-4c87-9073-f812528223ef'),
('Africa', '[A]', '[P-Z0-9]', '3dab93d2-d5d7-4d37-8187-b87d1d7eae2b'),
('Africa', '[B-D]', '[S-Z0-9]', '7f47e8ab-d406-40d0-83eb-a12c9d10353b'),
('Africa', '[E-F]', '[L-Z0-9]', '422ae923-5d47-4e0c-b688-f0f675b71dbc'),
('Africa', '[G-H]', '[A-Z0-9]', 'bceaff1e-fb88-4fe2-acc2-b2be77752772'),
('Angola', '[B]', '[A-E]', 'dc079951-235d-4e37-87a0-68a48acceaeb'),
('Kenya', '[B]', '[F-K]', 'de6867f6-7630-4123-8fcc-97ae72a0d5f9'),
('Tanzania', '[B]', '[L-R]', '0a7dfd8c-d69d-41f4-99e8-99fe76343a38'),
('Benin', '[C]', '[A-E]', '3b89b292-e122-403f-b1cc-e3ec649a0137'),
('Madagascar', '[C]', '[F-K]', '6360f7ac-91eb-4b0f-85db-9c95eb607f54'),
('Tunisia', '[C]', '[L-R]', 'f0cb58aa-43a6-4e1c-8187-e4cbe7c056ea'),
('Egypt', '[D]', '[A-E]', '4fac72ea-23ec-4ead-9ee1-5fa8b7fbfe10'),
('Morocco', '[D]', '[F-H]', 'fb64a1c6-375d-4fd0-91f7-01823e7d3e78'),
('Zambia', '[D]', '[L-R]', '4bcf80db-f099-458c-9e0c-13d85d436633'),
('Ghana', '[E]', '[A-E]', '607c5ab4-3f03-47e4-bfe2-67280adb1556'),
('Mozambique', '[E]', '[F-H]', '996ad831-3047-46c4-aa4a-361f483a387e'),
('India', '[F]', '[A-E]', '460504fb-28d7-41e8-b818-67fd5b0a57cd'),
('India', '[M]', '[A-E]', '544b4dda-2e9b-442a-8fef-186fbfc9bb80'),
('Nigeria', '[F]', '[F-K]', 'e3c81cf5-5792-4a7f-a636-cb8add8f2b72'),
('Japan', '[A]', '[A-Z0-9]', 'f9b66b84-6cfc-46cf-8dd1-2eff4a46340a'),
('Sri Lanka', '[A]', '[A-E]', 'c0c84817-9ada-4b03-becf-ce111145541c'),
('Israel', '[K]', '[F-K]', 'ab14ff1d-3363-4e42-9b35-b343d0aea3c0'),
('South Korea', '[K]', '[L-R]', '7c89fa9c-3fac-41a5-b7b2-a608970e2c3a'),
('Kazakhstan', '[K]', '[S-Z0-9]', 'dd44c0fc-5a05-4d18-8068-5cf2377d6887'),
('China', '[L]', '[A-Z0-9]', '998928ef-aa10-400c-97f3-05b0588d3370');          
INSERT INTO PUBLIC.WMI_COUNTRY(NAME, PREFIXREGEX, SUFFIXREGEX, UUID) VALUES
('Indonesia', '[M]', '[F-K]', 'ad15bb34-fbcb-4fe8-a9d8-1a6df0fb5ba5'),
('Thailand', '[M]', '[L-R]', '2bad5b0b-f29c-42cd-ad5c-c78a8e45f302'),
('Iran', '[N]', '[A-E]', '1542b413-f7a9-4044-bc30-f36f2280dc1f'),
('Pakistan', '[N]', '[F-K]', '7f8483dd-72c1-4a1b-9a3a-a58b473918fd'),
('Turkey', '[N]', '[L-R]', '9714c3fb-c57f-4f0c-9f63-b8c7f9c98e75'),
('Pakistan', '[N]', '[F-K]', '02a3676c-b124-409e-b78e-1792d8972a34'),
('Asia', '[M-P]', '[S-Z0-9]', '2e14ee49-7cc9-4fef-990f-6b00e6f3a091'),
('Philippines', '[P]', '[A-E]', '579d38d9-5115-4dea-8c66-90af40210fd1'),
('Singapore', '[P]', '[F-K]', 'dbce7369-d102-4f3f-933f-da62de59200d'),
('Malaysia', '[N]', '[L-R]', 'b569d4cf-acbc-4e4e-b1ca-ed812477ba9c'),
('UAE', '[P]', '[A-E]', '57d19ed4-5316-43f0-8991-d16493f10e4e'),
('Taiwan', '[R]', '[F-K]', '4a6ab5ac-dd0d-45f0-94c3-feb13f7762b7'),
('Vietnam', '[R]', '[L-R]', 'eacde50d-7d17-4903-b3d6-2a93c98933f8'),
('Saudi Arabia', '[R]', '[S-Z0-9]', '1be6ae54-b124-4844-92d5-548fb93949b6'),
('United Kingdom', '[S]', '[A-M]', '77c07bf5-0881-45a6-8694-7b0957689db8'),
('East Germany', '[S]', '[N-T]', 'a31c8eab-43e1-457d-bdbb-f0cabfc7fda6'),
('Poland', '[S]', '[U-Z]', '24f91b55-29d2-499c-a099-234b737405e7'),
('Latvia', '[S]', '[1-4]', '3b9a9832-4388-4959-8e12-f021753c3b52'),
('Europe', '[S]', '[5-90]', '5b3ab0d1-b0b0-4826-ba5e-fa491830e6f7'),
('Europe', '[T]', '[2-90]', 'f0bf7864-bb1d-4f13-b82e-4ad0576d79d0'),
('Europe', '[U]', '[A-G]', 'a2531d97-9ae5-469c-a2d3-f6275520626c'),
('Europe', '[U]', '[1-4]', '8bc182ca-92e7-4cb0-a7e9-48137933937f'),
('Europe', '[U]', '[8-90]', 'c2d86907-9557-4ccd-8249-5f819f998ccc'),
('Europe', '[Z]', '[S-W]', '2946a0e1-4982-49b4-a62f-c5376f87e0e7'),
('Europe', '[Z]', '[6-90]', '82a858fd-e31d-455d-b71f-b1b7c0504352'),
('Switzerland', '[T]', '[A-H]', '5283738f-65ba-4b54-99a9-5398abd64111'),
('Czech Republic', '[T]', '[J-P]', 'bc97cf3c-f862-464d-b24f-9d0c3ed6e5b7'),
('Hungary', '[T]', '[R-V]', '49d82e4a-2c2c-41a7-ab69-ba3590d0ee77'),
('Portugal', '[T]', '[W-Z1]', '07e46f8c-b37a-4fba-b1c2-9e67358ef429'),
('Denmark', '[U]', '[H-M]', '72b62c53-0e3a-49ae-b9fb-7147f53fe1f8'),
('Ireland', '[U]', '[N-T]', '8dacbf1d-cad3-412d-9397-b7f938b88bc0'),
('Romania', '[U]', '[U-Z]', '335297b0-0977-43de-9b26-df7f50ed67a5'),
('Slovakia', '[U]', '[5-7]', 'b5ee13b1-7238-456b-b526-8639752492e7'),
('Austria', '[V]', '[A-E]', 'bbeb2b7c-c67b-427f-8ee0-71d6c2eb6536'),
('France', '[V]', '[F-R]', 'cbd84d1c-2f8b-4e29-b061-7f17316a33db'),
('Spain', '[V]', '[S-W]', '119a57de-0222-4dcf-98fe-161a4d63338c'),
('Serbia', '[V]', '[X-Z1-2]', '59fef1ab-6569-4af8-949a-26ec049b9d02'),
('Croatia', '[V]', '[3-5]', 'b0bfadba-5e03-4b90-87cf-8b73fec122ff'),
('Estonia', '[V]', '[6-90]', '4cebe666-1d50-4b63-9b9e-07374ef20eb1'),
('Germany', '[W]', '[A-Z0-9]', '62727ea1-19fb-4ddf-a0d5-c402bfaeeb5b'),
('Bulgaria', '[X]', '[A-E]', '1bfe5a94-7703-4693-9172-2f76783135a4'),
('Greece', '[X]', '[F-K]', '0ebd5927-0245-4024-8f71-c19023ae6a31'),
('Netherlands', '[X]', '[L-R]', '116e642c-080f-42a3-8b20-378958aa7e8a'),
('USSR', '[X]', '[S-W]', '2b043996-4291-4a03-8a7b-7c339ac7e10e'),
('Luxembourg', '[X]', '[X-Z1-2]', 'f3f9e373-36ab-4b15-9962-61498d3083ee'),
('Russia', '[X]', '[3-90]', '5f9119d8-4ff4-46b8-8eaa-fb5763f6678c'),
('Belgium', '[Y]', '[A-E]', '92a48fff-66d1-42a8-adf7-e81fcd2ec5ec'),
('Finland', '[Y]', '[F-K]', 'aa2312eb-dddc-4412-b94e-04d2faafeeac'),
('Malta', '[Y]', '[L-R]', '1342a03a-0ec2-4816-8c6e-43345c2ba9ad'),
('Sweden', '[Y]', '[S-W]', '28edcd32-41da-4e06-b601-4cd404513689'),
('Norway', '[Y]', '[X-Z1-2]', '62749eaa-88db-4102-ad92-8f7b012e4ccb'),
('Belarus', '[Y]', '[3-5]', '1c401e19-5c43-4bed-aeb3-eb896da12d43'),
('Ukraine', '[Y]', '[6-90]', 'b82a472a-c87f-4139-9b55-c6bde64153c8'),
('Italy', '[Y]', '[A-R]', 'a0d4b786-cec5-4e79-9a79-0f7f9220e5de'),
('Slovenia', '[Z]', '[X-Z1-2]', '3e1acd5a-5fbd-4406-b691-33dd031da19b'),
('Lithuania', '[Z]', '[3-5]', '058e96f9-68b8-4032-aa42-2cf5de3b969f'),
('United States', '[1]', '[A-Z0-9]', '29ea1050-d810-405f-8044-7ea0c6e1704e'),
('United States', '[4]', '[A-Z0-9]', 'e0e18cb5-2190-4fa4-9b8a-358bdc6c6efa');     
INSERT INTO PUBLIC.WMI_COUNTRY(NAME, PREFIXREGEX, SUFFIXREGEX, UUID) VALUES
('United States', '[5]', '[A-Z0-9]', '53272f0f-c244-4c85-bd2a-213c551b0fde'),
('Canada', '[2]', '[A-Z0-9]', '188ddafa-4717-4d84-9677-74316d4d5dac'),
('Mexico', '[3]', '[A-Z0-9]', '727daede-6c68-4c4c-b365-eb28f915bce1'),
('Australia', '[6]', '[A-W]', '4ed1b296-3550-4f26-be38-032adf4740b9'),
('Oceania', '[6]', '[X-Z0-9]', '4604ec55-3946-4b95-af3e-59cb3a48b583'),
('Oceania', '[7]', '[F-Z0-9]', '17ae28df-7e00-4f6a-ba19-bce2644284d3'),
('New Zealand', '[7]', '[A-E]', 'f3beea8d-1a68-4f92-9259-39262fae1edf'),
('Argentina', '[8]', '[A-E]', '9fd480a4-5fbc-4de7-b6c7-c31391b5e74e'),
('Chile', '[8]', '[F-K]', 'b88b84f9-ce4d-4ca5-9366-0980ec350673'),
('Ecuador', '[8]', '[L-R]', 'ab71f553-2453-4993-b985-c7820f7f852e'),
('Peru', '[8]', '[S-W]', '8071b0e0-2a88-493e-9c96-c451109e1dc8'),
('Venezuela', '[8]', '[X-Z1-2]', '635c8908-7d36-48ad-aa36-48bea2f7ad43'),
('South America', '[8]', '[2-90]', '0fd79945-3a1d-40ab-9b4f-f74c5813630c'),
('South America', '[9]', '[0]', 'ffe19f78-c012-4694-8a24-ef962618e3f6'),
('South America', '[0]', '[A-Z0-9]', '17828277-183c-47c4-960b-29cba8bfae08'),
('Brazil', '[9]', '[A-E]', '94649cc0-4676-4048-8e8c-123271b63116'),
('Brazil', '[9]', '[3-9]', '788595c8-ccf4-4471-808f-7abc8dcf4eaf'),
('Colombia', '[9]', '[F-K]', '2e6145df-fbc5-4e6b-a52e-e1dabcbe7d7a'),
('Paraguay', '[9]', '[L-R]', '1d789b67-cb46-4555-83ed-d39f81d35193'),
('Uruguay', '[9]', '[S-W]', 'a973bd11-a603-4ed9-ae8a-68637f6531ff'),
('Trinidad Tobago', '[9]', '[X-Z1-2]', '7fd8bb67-3eca-4503-b098-70b182534704');           
CREATE CACHED TABLE PUBLIC.WMI_MANUFACTURER(
    NAME VARCHAR(255) NOT NULL,
    DESCRIPTION VARCHAR(255),
    WMICODE VARCHAR(255) NOT NULL,
    UUID VARCHAR(255) NOT NULL
);          
ALTER TABLE PUBLIC.WMI_MANUFACTURER ADD CONSTRAINT PUBLIC.CONSTRAINT_A PRIMARY KEY(UUID);     
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.WMI_MANUFACTURER;        
CREATE CACHED TABLE PUBLIC.VDS(
    MANUFACTURER_ID VARCHAR(255) NOT NULL,
    CODE VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    UUID VARCHAR(255) NOT NULL
);        
ALTER TABLE PUBLIC.VDS ADD CONSTRAINT PUBLIC.CONSTRAINT_1 PRIMARY KEY(UUID);  
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.VDS;     
CREATE CACHED TABLE PUBLIC.VIS(
    MANUFACTURER_ID VARCHAR(255) NOT NULL,
    CODE VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    UUID VARCHAR(255) NOT NULL
);        
ALTER TABLE PUBLIC.VIS ADD CONSTRAINT PUBLIC.CONSTRAINT_14 PRIMARY KEY(UUID); 
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.VIS;     
