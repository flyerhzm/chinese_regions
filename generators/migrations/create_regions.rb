class CreateRegions < ActiveRecord::Migration
  def self.up
    create_table :regions do |t|
      t.string :name
    end

    Region.create(:name => '北京市')
    Region.create(:name => '天津市')
    Region.create(:name => '河北省')
    Region.create(:name => '山西省')
    Region.create(:name => '内蒙古自治区')
    Region.create(:name => '辽宁省')
    Region.create(:name => '吉林省')
    Region.create(:name => '黑龙江省')
    Region.create(:name => '上海市')
    Region.create(:name => '江苏省')
    Region.create(:name => '浙江省')
    Region.create(:name => '安徽省')
    Region.create(:name => '福建省')
    Region.create(:name => '江西省')
    Region.create(:name => '山东省')
    Region.create(:name => '河南省')
    Region.create(:name => '湖北省')
    Region.create(:name => '湖南省')
    Region.create(:name => '广东省')
    Region.create(:name => '广西壮族自治区')
    Region.create(:name => '海南省')
    Region.create(:name => '重庆市')
    Region.create(:name => '四川省')
    Region.create(:name => '贵州省')
    Region.create(:name => '云南省')
    Region.create(:name => '西藏自治区')
    Region.create(:name => '陕西省')
    Region.create(:name => '甘肃省')
    Region.create(:name => '青海省')
    Region.create(:name => '宁夏回族自治区')
    Region.create(:name => '新疆维吾尔自治区')
  end

  def self.down
    drop_table :regions
  end
end
