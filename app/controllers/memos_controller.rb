class MemosController < ApplicationController
    #メモ一覧ページ
    def index
        #トップページ
        @memos = Memo.all
    
    end
    def new
        #新規追加ボタンクリック時のアクション
        
    end
    
    #メモ新規追加ページ
    def add
        #新規追加ページでpost時のアクション
        Memo.create(title:params["memos"]["title"],body:params["memos"]["body"],category_id:params["memos"]["category_id"])
        redirect_to "/"
    end
    
    #メモ編集ページ
    def edit
        @memo = Memo.find(params["id"])
    end
    def update
        update_memo = Memo.find(params["id"])
        update_memo.title = params["memos"]["title"]
        update_memo.body = params["memos"]["body"]
        update_memo.category_id = params["memos"]["category_id"]
        update_memo.save
        redirect_to "/"
    end
    def destroy
        delete_memo = Memo.find(params["id"])
        delete_memo.destroy
        redirect_to "/"
    end
end
