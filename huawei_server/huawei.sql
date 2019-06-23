SET NAMES UTF8;
DROP DATABASE IF EXISTS huawei;
CREATE DATABASE huawei CHARSET=UTF8;
USE huawei;

#####创建商品分类(家族)表
CREATE TABLE huawei_type(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  tname VARCHAR(32) 
);
  ####插入分类
INSERT INTO huawei_type VALUES(1,'荣耀V20');
#INSERT INTO huawei_type VALUES(NULL,'荣耀10青春版');
#INSERT INTO huawei_type VALUES(NULL,'HUAWEI P20');
INSERT INTO huawei_type VALUES(NULL,'HUAWEI Mate20Pr4');
INSERT INTO huawei_type VALUES(NULL,'华为畅享5');
INSERT INTO huawei_type VALUES(NULL,'HUAWEI MateBook 13');



#####创建商品列表
CREATE TABLE huawei_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  tid INT,               #商品类别号
  pname VARCHAR(32),     #商品名称
  title VARCHAR(128),     #主题
  price DECIMAL(8,2),    #价格
  color VARCHAR(32),      #商品颜色
  spec VARCHAR(32),        #商品规格
  position VARCHAR(32),     #显示位置
  show_img VARCHAR(128)     #商品列表显示图片
);
    ####插入商品
INSERT INTO huawei_product VALUES(1,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通8GB+128GB 标配版 魅海蓝','2699','魅海蓝','全网通8GB+128GB','hot','img/v20/meilan/md1.png');
INSERT INTO huawei_product VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通8GB+128GB 标配版 幻夜黑','2699','幻夜黑','全网通8GB+128GB','hot','img/v20/huanhei/md1.png');
INSERT INTO huawei_product VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通8GB+128GB 标配版 幻夜黑','2699','魅力红','全网通8GB+128GB','hot','img/v20/meilan/md1.png');
INSERT INTO huawei_product VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通8GB+128GB 标配版 幻夜黑','2699','幻影红','全网通8GB+128GB','hot','img/v20/huanhei/md1.png');
INSERT INTO huawei_product VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通8GB+128GB 标配版 幻夜黑','2699','幻影蓝','全网通8GB+128GB','hot','img/v20/meilan/md1.png');

INSERT INTO huawei_product VALUES(NULL,3,'HUAWEI P20','HUAWEI P20 6GB+64GB 全网通版（亮黑色）','3388','亮黑色','全网通8GB+128GB','reco','img/v20/meilan/md1.png');
INSERT INTO huawei_product VALUES(NULL,3,'HUAWEI P20','HUAWEI P20 6GB+64GB 全网通版（幻影蓝）','3388','幻影蓝','全网通8GB+128GB','reco','img/v20/meilan/md1.png');
INSERT INTO huawei_product VALUES(NULL,3,'HUAWEI P20','HUAWEI P20 6GB+64GB 全网通版（亮黑色）','3388','亮黑色','全网通8GB+128GB','reco','img/v20/meilan/md1.png');
INSERT INTO huawei_product VALUES(NULL,3,'HUAWEI P20','HUAWEI P20 6GB+64GB 全网通版（幻影蓝）','3388','幻影蓝','全网通8GB+128GB','reco','img/v20/meilan/md1.png');
INSERT INTO huawei_product VALUES(NULL,3,'HUAWEI P20','HUAWEI P20 6GB+64GB 全网通版（亮黑色）','3388','幻影蓝','全网通8GB+128GB','reco','img/v20/meilan/md1.png');

INSERT INTO huawei_product VALUES(NULL,4,'HUAWEI Mate20Pro','HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹 8GB+128GB 全网通版（翡翠冷）','5699','翡翠冷','全网通6GB+128GB','phone','img/mate20_pro/feileng/md1.png');
INSERT INTO huawei_product VALUES(NULL,4,'HUAWEI Mate20Pro','HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹 8GB+128GB 全网通版（亮黑色）','5699','亮黑色','全网通8GB+128GB','phone','img/mate20_pro/fuhong/md1.png');
INSERT INTO huawei_product VALUES(NULL,4,'HUAWEI Mate20Pro','HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹 8GB+128GB 全网通版（宝石蓝）','5699','宝石蓝','全网通8GB+128GB','phone','img/mate20_pro/feileng/md1.png');
INSERT INTO huawei_product VALUES(NULL,4,'HUAWEI Mate20Pro','HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹 8GB+128GB 全网通版（极光色）','5699','极光色','全网通8GB+128GB','phone','img/mate20_pro/fuhong/md1.png');
INSERT INTO huawei_product VALUES(NULL,4,'HUAWEI Mate20Pro','HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹 8GB+128GB 全网通版（幻影红）','5699','幻影红','全网通8GB+128GB','phone','img/mate20_pro/feileng/md1.png');

INSERT INTO huawei_product VALUES(NULL,6,'HUAWEI MateBook 13','华为）HUAWEI MateBook 13 2K全面屏轻薄性能笔记本 手机电脑一碰即传 深空灰 i5 8GB 512GB 独显','5699','深空灰','8GB+512GB','laptop','img/magic2/black/md1.png');
INSERT INTO huawei_product VALUES(NULL,6,'HUAWEI MateBook 13','华为）HUAWEI MateBook 13 2K全面屏轻薄性能笔记本 手机电脑一碰即传 深空灰 i5 8GB 512GB 独显','5699','深空灰','8GB+512GB','laptop','img/magic2/black/md1.png');
INSERT INTO huawei_product VALUES(NULL,6,'HUAWEI MateBook 13','华为）HUAWEI MateBook 13 2K全面屏轻薄性能笔记本 手机电脑一碰即传 深空灰 i5 8GB 512GB 独显','5699','深空灰','8GB+512GB','laptop','img/magic2/black/md1.png');
INSERT INTO huawei_product VALUES(NULL,6,'HUAWEI MateBook 13','华为）HUAWEI MateBook 13 2K全面屏轻薄性能笔记本 手机电脑一碰即传 深空灰 i5 8GB 512GB 独显','5699','深空灰','8GB+512GB','laptop','img/magic2/black/md1.png');
INSERT INTO huawei_product VALUES(NULL,6,'HUAWEI MateBook 13','华为）HUAWEI MateBook 13 2K全面屏轻薄性能笔记本 手机电脑一碰即传 深空灰 i5 8GB 512GB 独显','5699','深空灰','8GB+512GB','laptop','img/magic2/black/md1.png');

INSERT INTO huawei_product VALUES(NULL,5,'华为畅享9','华为畅享9 1300万AI双摄 4000mAh大电池 3GB+32GB 全网通标配版（幻夜黑）','1399','魅丽红','全网通6GB+128GB','phone','img/pimages/proTab/2.png');
INSERT INTO huawei_product VALUES(NULL,5,'华为畅享9','华为畅享9 1300万AI双摄 4000mAh大电池 3GB+32GB 全网通标配版（幻夜黑）','1299','幻夜黑','全网通8GB+128GB','phone','img/pimages/proTab/3.png');
INSERT INTO huawei_product VALUES(NULL,5,'华为畅享9','华为畅享9 1300万AI双摄 4000mAh大电池 3GB+32GB 全网通标配版（幻夜黑）','1299','幻夜黑','全网通8GB+128GB','phone','img/pimages/proTab/2.png');
INSERT INTO huawei_product VALUES(NULL,5,'华为畅享9','华为畅享9 1300万AI双摄 4000mAh大电池 3GB+32GB 全网通标配版（幻夜黑）','1299','幻夜黑','全网通8GB+128GB','phone','img/pimages/proTab/3.png');
INSERT INTO huawei_product VALUES(NULL,5,'华为畅享9','华为畅享9 1300万AI双摄 4000mAh大电池 3GB+32GB 全网通标配版（幻夜黑）','1299','幻夜黑','全网通8GB+128GB','phone','img/pimages/proTab/2.png');

INSERT INTO huawei_product VALUES(NULL,3,'华为畅享9','畅享手机','3699','魅丽红','全网通6GB+128GB','product','img/pimages/proTab/2.png');
INSERT INTO huawei_product VALUES(NULL,3,'华为畅享9','畅享手机','3699','魅丽红','全网通8GB+128GB','product','img/pimages/proTab/3.png');
INSERT INTO huawei_product VALUES(NULL,2,'HUAWEI Mate20Pro','HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹 8GB+128GB 全网通版（幻影红）','5699','幻影红','全网通8GB+128GB','product','img/pimages/proTab/2.png');
INSERT INTO huawei_product VALUES(NULL,2,'HUAWEI Mate20Pro','HUAWEI Mate 20 Pro (UD) 麒麟980 AI芯片 超广角徕卡三摄 OLED曲面屏 屏内指纹 8GB+128GB 全网通版（幻影红）','5699','幻影红','全网通8GB+128GB','product','img/pimages/proTab/3.png');
INSERT INTO huawei_product VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通8GB+128GB 标配版 幻夜黑','2699','幻影蓝','全网通8GB+128GB','product','img/pimages/proTab/2.png');


####创建图片列表
CREATE TABLE huawei_img(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  pid INT,
  sm VARCHAR(128),    #小图片路径
  md VARCHAR(128),    #中图片路径
  lg VARCHAR(128)     #大图片路径
);
  ####插入图片资源
INSERT INTO huawei_img VALUES(1,1,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,1,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,1,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,1,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,1,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,2,'img/v20/huanhei/sm1.png','img/v20/huanhei/md1.png','img/v20/huanhei/lg1.png');
INSERT INTO huawei_img VALUES(NULL,2,'img/v20/huanhei/sm2.png','img/v20/huanhei/md1.png','img/v20/huanhei/lg1.png');
INSERT INTO huawei_img VALUES(NULL,2,'img/v20/huanhei/sm3.png','img/v20/huanhei/md1.png','img/v20/huanhei/lg1.png');
INSERT INTO huawei_img VALUES(NULL,2,'img/v20/huanhei/sm4.png','img/v20/huanhei/md1.png','img/v20/huanhei/lg1.png');
INSERT INTO huawei_img VALUES(NULL,2,'img/v20/huanhei/sm5.png','img/v20/huanhei/md1.png','img/v20/huanhei/lg1.png');
INSERT INTO huawei_img VALUES(NULL,2,'img/v20/huanhei/sm6.png','img/v20/huanhei/md1.png','img/v20/huanhei/lg1.png');

INSERT INTO huawei_img VALUES(NULL,3,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,3,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,3,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,3,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,3,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,4,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,4,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,4,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,4,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,4,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,5,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,5,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,5,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,5,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,5,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,6,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,6,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,6,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,6,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,6,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,7,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,7,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,7,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,7,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,7,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,8,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,8,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,8,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,8,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,8,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,9,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,9,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,9,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,9,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,9,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,10,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,10,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,10,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,10,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,10,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,11,'img/mate20_pro/feileng/sm1.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,11,'img/mate20_pro/feileng/sm2.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,11,'img/mate20_pro/feileng/sm3.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,11,'img/mate20_pro/feileng/sm4.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,11,'img/mate20_pro/feileng/sm5.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');

INSERT INTO huawei_img VALUES(NULL,12,'img/mate20 pro/fuhong/sm1.png','img/mate20 pro/fuhong/md1.png','img/mate20_pro/fuhong/lg1.png');
INSERT INTO huawei_img VALUES(NULL,12,'img/mate20 pro/fuhong/sm2.png','img/mate20 pro/feileng/md1.png','img/mate20_pro/fuhong/lg1.png');
INSERT INTO huawei_img VALUES(NULL,12,'img/mate20 pro/fuhong/sm3.png','img/mate20 pro/feileng/md1.png','img/mate20_pro/fuhong/lg1.png');
INSERT INTO huawei_img VALUES(NULL,12,'img/mate20 pro/fuhong/sm4.png','img/mate20 pro/feileng/md1.png','img/mate20_pro/fuhong/lg1.png');
INSERT INTO huawei_img VALUES(NULL,12,'img/mate20 pro/fuhong/sm5.png','img/mate20 pro/feileng/md1.png','img/mate20_pro/fuhong/lg1.png');

INSERT INTO huawei_img VALUES(NULL,13,'img/mate20_pro/feileng/sm1.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,13,'img/mate20_pro/feileng/sm2.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,13,'img/mate20_pro/feileng/sm3.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,13,'img/mate20_pro/feileng/sm4.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,13,'img/mate20_pro/feileng/sm5.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');

INSERT INTO huawei_img VALUES(NULL,14,'img/mate20 pro/fuhong/sm1.png','img/mate20 pro/fuhong/md1.png','img/mate20_pro/fuhong/lg1.png');
INSERT INTO huawei_img VALUES(NULL,14,'img/mate20 pro/fuhong/sm2.png','img/mate20 pro/feileng/md1.png','img/mate20_pro/fuhong/lg1.png');
INSERT INTO huawei_img VALUES(NULL,14,'img/mate20 pro/fuhong/sm3.png','img/mate20 pro/feileng/md1.png','img/mate20_pro/fuhong/lg1.png');
INSERT INTO huawei_img VALUES(NULL,14,'img/mate20 pro/fuhong/sm4.png','img/mate20 pro/feileng/md1.png','img/mate20_pro/fuhong/lg1.png');
INSERT INTO huawei_img VALUES(NULL,14,'img/mate20 pro/fuhong/sm5.png','img/mate20 pro/feileng/md1.png','img/mate20_pro/fuhong/lg1.png');

INSERT INTO huawei_img VALUES(NULL,15,'img/mate20_pro/feileng/sm1.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,15,'img/mate20_pro/feileng/sm2.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,15,'img/mate20_pro/feileng/sm3.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,15,'img/mate20_pro/feileng/sm4.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');
INSERT INTO huawei_img VALUES(NULL,15,'img/mate20_pro/feileng/sm5.png','img/mate20_pro/feileng/md1.png','img/mate20_pro/feileng/lg1.png');

INSERT INTO huawei_img VALUES(NULL,16,'img/magic2/black/sm1.png','img/magic2/black/md1.png','img/magic2/black/lg1.png');
INSERT INTO huawei_img VALUES(NULL,16,'img/magic2/black/sm2.png','img/magic2/black/md1.png','img/magic2/black/lg1.png');
INSERT INTO huawei_img VALUES(NULL,16,'img/magic2/black/sm3.png','img/magic2/black/md1.png','img/magic2/black/lg1.png');
INSERT INTO huawei_img VALUES(NULL,16,'img/magic2/black/sm4.png','img/magic2/black/md1.png','img/magic2/black/lg1.png');
INSERT INTO huawei_img VALUES(NULL,16,'img/magic2/black/sm5.png','img/magic2/black/md1.png','img/magic2/black/lg1.png');

INSERT INTO huawei_img VALUES(NULL,17,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,17,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,17,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,17,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,17,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');

INSERT INTO huawei_img VALUES(NULL,18,'img/v20/meilan/sm1.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,18,'img/v20/meilan/sm2.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,18,'img/v20/meilan/sm3.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,18,'img/v20/meilan/sm4.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');
INSERT INTO huawei_img VALUES(NULL,18,'img/v20/meilan/sm5.png','img/v20/meilan/md1.png','img/v20/meilan/lg1.png');







####创建用户列表
CREATE TABLE huawei_user(
  uid   INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(24),  #用户名
  upwd  VARCHAR(32)   #密5
);
  ####插入用户数据
INSERT INTO huawei_user VALUES(1,'dyg','123456');
INSERT INTO huawei_user VALUES(NULL,'tom','123456');
INSERT INTO huawei_user VALUES(NULL,'jack','123456');

######创建购物车表
CREATE table huawei_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,      #用户编号
  pid INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);
  ####插入购物车数据
INSERT INTO huawei_cart VALUES(1,2,1,1,1);
INSERT INTO huawei_cart VALUES(NULL,2,2,1,1);
INSERT INTO huawei_cart VALUES(NULL,2,3,1,1);
INSERT INTO huawei_cart VALUES(NULL,1,14,1,1);
INSERT INTO huawei_cart VALUES(NULL,1,15,1,1);
INSERT INTO huawei_cart VALUES(NULL,1,13,1,1);
INSERT INTO huawei_cart VALUES(NULL,3,1,1,1);

#####创建首页商品表
CREATE TABLE huawei_index(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  tid INT,               #商品类别号
  pname VARCHAR(32),     #商品名称
  title VARCHAR(128),     #主题
  price DECIMAL(8,2),    #价格
  color VARCHAR(32),      #商品颜色
  spec VARCHAR(32),        #商品规格
  floor VARCHAR(32)	   #所处首页的那一层	
);
	##插入首页商品
INSERT INTO huawei_index VALUES(1,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通6GB+128GB 标配版 魅海蓝','2699','魅海蓝','全网通6GB+128GB','hot');
INSERT INTO huawei_index VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通6GB+128GB 标配版 魅海蓝','2699','魅海蓝','全网通6GB+128GB','hot');
INSERT INTO huawei_index VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通6GB+128GB 标配版 魅海蓝','2699','魅海蓝','全网通6GB+128GB','hot');
INSERT INTO huawei_index VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通6GB+128GB 标配版 魅海蓝','2699','魅海蓝','全网通6GB+128GB','hot');
INSERT INTO huawei_index VALUES(NULL,1,'荣耀V20','荣耀V20 麒麟980 魅眼全视屏 4800万AI超清摄影 全网通6GB+128GB 标配版 魅海蓝','2699','魅海蓝','全网通6GB+128GB','hot');


