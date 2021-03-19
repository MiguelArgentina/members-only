module ApplicationHelper
  def author(post)
    @author = Member.find_by(id: post.member_id).name if member_signed_in?
    @author
  end

  def account
    if member_signed_in?
      render 'layouts/account'
    else
      render 'layouts/membership'
    end
  end
end
