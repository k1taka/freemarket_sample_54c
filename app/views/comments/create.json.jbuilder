json.comment @comment.comment
json.created_at @comment.created_at.strftime("%Y/%m/%d %H:%M")
json.user_name @comment.user.nickname
json.id @comment.id