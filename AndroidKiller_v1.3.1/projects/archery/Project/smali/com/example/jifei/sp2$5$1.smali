.class Lcom/example/jifei/sp2$5$1;
.super Ljava/lang/Object;
.source "sp2.java"

# interfaces
.implements Lcom/nuage/pay/SendSmsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jifei/sp2$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/jifei/sp2$5;

.field private final synthetic val$i:I

.field private final synthetic val$mactivity:Landroid/app/Activity;

.field private final synthetic val$sp3popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/example/jifei/sp2$5;Landroid/app/Activity;Landroid/widget/PopupWindow;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp2$5$1;->this$1:Lcom/example/jifei/sp2$5;

    iput-object p2, p0, Lcom/example/jifei/sp2$5$1;->val$mactivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/example/jifei/sp2$5$1;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    iput p4, p0, Lcom/example/jifei/sp2$5$1;->val$i:I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(I)V
    .locals 11
    .param p1, "arg0"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 191
    if-ne p1, v9, :cond_4

    .line 192
    iget-object v7, p0, Lcom/example/jifei/sp2$5$1;->val$mactivity:Landroid/app/Activity;

    const-string v8, "5"

    invoke-static {v7, v8}, Lcom/nuage/pay/AFUtils;->eventPurchase(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    iget-object v7, p0, Lcom/example/jifei/sp2$5$1;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    .line 196
    iget-object v7, p0, Lcom/example/jifei/sp2$5$1;->val$mactivity:Landroid/app/Activity;

    const-string v8, "com.junerking.archery"

    invoke-virtual {v7, v8, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 197
    .local v3, "mshared":Landroid/content/SharedPreferences;
    const-string v7, "UserCoins"

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 198
    .local v6, "usercoins":I
    const/4 v4, 0x0

    .line 199
    .local v4, "mycoin":I
    iget v7, p0, Lcom/example/jifei/sp2$5$1;->val$i:I

    if-ne v7, v9, :cond_1

    .line 201
    const/16 v4, 0x9c4

    .line 212
    :cond_0
    :goto_0
    add-int/2addr v6, v4

    .line 213
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 214
    .local v1, "medit":Landroid/content/SharedPreferences$Editor;
    const-string v7, "UserCoins"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    iget-object v7, p0, Lcom/example/jifei/sp2$5$1;->val$mactivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/example/jifei/sp2$5$1;->val$mactivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 218
    iget-object v7, p0, Lcom/example/jifei/sp2$5$1;->val$mactivity:Landroid/app/Activity;

    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 219
    iget-object v7, p0, Lcom/example/jifei/sp2$5$1;->val$mactivity:Landroid/app/Activity;

    const-string v8, "mycode"

    invoke-virtual {v7, v8, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 220
    .local v2, "mshare":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 221
    .local v5, "seditor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "ss"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "medit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "mshare":Landroid/content/SharedPreferences;
    .end local v3    # "mshared":Landroid/content/SharedPreferences;
    .end local v4    # "mycoin":I
    .end local v5    # "seditor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "usercoins":I
    :goto_1
    return-void

    .line 203
    .restart local v3    # "mshared":Landroid/content/SharedPreferences;
    .restart local v4    # "mycoin":I
    .restart local v6    # "usercoins":I
    :cond_1
    iget v7, p0, Lcom/example/jifei/sp2$5$1;->val$i:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 205
    const/16 v4, 0x1964

    .line 206
    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/example/jifei/sp2$5$1;->val$i:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 208
    const/16 v4, 0x3a98

    .line 209
    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/example/jifei/sp2$5$1;->val$i:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 210
    const v4, 0x7a120

    goto :goto_0

    .line 225
    .end local v3    # "mshared":Landroid/content/SharedPreferences;
    .end local v4    # "mycoin":I
    .end local v6    # "usercoins":I
    :cond_4
    iget-object v7, p0, Lcom/example/jifei/sp2$5$1;->val$mactivity:Landroid/app/Activity;

    const-string v8, "Purchase failed,you can try again!"

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
