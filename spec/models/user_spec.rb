require 'rails_helper'

RSpec.describe User, type: :model do

  #let(:params) {{name: "さとる",age: 1}}
  #let(:params2) {{name: "さとる",age: 15}}
  #let(:params3) {{name: "さとる",age: 20}}
  #let(:params4) {{name: "さとる",age: -1}}

  let(:params) {{name:"さとる"}}


  it "年齢1:ユーザーの名前が「〜さん」と取得できること" do
    params.merge!(age:1)
    user = User.new(params)
    expect(user.disp_name).to eq "さとるちゃん"
  end

  it "年齢15:ユーザーの名前が「〜さん」と取得できること" do
    params.merge!(age:15)
    user = User.new(params)
    expect(user.disp_name).to eq "さとるくん"
  end

  it "年齢20:ユーザーの名前が「〜さん」と取得できること" do
    params.merge!(age:20)
    user = User.new(params)
    expect(user.disp_name).to eq "さとるさん"
  end

  it "年齢-1:「不正な値です」と取得できること" do
    params.merge!(age:-1)
    user = User.new(params)
    expect(user.disp_name).to eq "不正な値です"
  end

end
