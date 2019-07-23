crumb :root do
  link "メルカリ", root_path
end

crumb :mypage do
  link "マイページ", users_path
  parent :root
end

crumb :profile do
  link "プロフィール", profile_path
  parent :mypage
end

crumb :address do
  link "発送元・お届け先住所変更", address_path
  parent :mypage
end

crumb :pay_way do
  link "支払い方法", pay_way_path
  parent :mypage
end

crumb :pay_way_update do
  link "", pay_way_update_path
  parent :mypage
end

crumb :mail_password do
  link "メール/パスワード", mail_password_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", logout_users_path
  parent :mypage
end