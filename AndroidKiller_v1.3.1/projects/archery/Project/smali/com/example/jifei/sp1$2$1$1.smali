.class Lcom/example/jifei/sp1$2$1$1;
.super Ljava/lang/Object;
.source "sp1.java"

# interfaces
.implements Lcom/nuage/pay/SendSmsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/jifei/sp1$2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/example/jifei/sp1$2$1;

.field private final synthetic val$macitivity:Landroid/app/Activity;

.field private final synthetic val$popupwindow:Landroid/widget/PopupWindow;

.field private final synthetic val$sp3popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/example/jifei/sp1$2$1;Landroid/app/Activity;Landroid/widget/PopupWindow;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/jifei/sp1$2$1$1;->this$2:Lcom/example/jifei/sp1$2$1;

    iput-object p2, p0, Lcom/example/jifei/sp1$2$1$1;->val$macitivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/example/jifei/sp1$2$1$1;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    iput-object p4, p0, Lcom/example/jifei/sp1$2$1$1;->val$popupwindow:Landroid/widget/PopupWindow;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(I)V
    .locals 7
    .param p1, "arg0"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 164
    if-ne p1, v5, :cond_0

    iget-object v3, p0, Lcom/example/jifei/sp1$2$1$1;->val$macitivity:Landroid/app/Activity;

    const-string v4, "6"

    invoke-static {v3, v4}, Lcom/nuage/pay/AFUtils;->eventPurchase(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/example/jifei/sp1$2$1$1;->val$sp3popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 167
    iget-object v3, p0, Lcom/example/jifei/sp1$2$1$1;->val$macitivity:Landroid/app/Activity;

    .line 168
    const-string v4, "mysp"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    .local v1, "msharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "mmedit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "start"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v3, "start"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .local v2, "start":I
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    iget-object v3, p0, Lcom/example/jifei/sp1$2$1$1;->val$popupwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 179
    .end local v0    # "mmedit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "msharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "start":I
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/example/jifei/sp1$2$1$1;->val$macitivity:Landroid/app/Activity;

    const-string v4, "6"

    invoke-static {v3, v4, p1}, Lcom/nuage/pay/AFUtils;->eventPurchaseFail(Landroid/content/Context;Ljava/lang/String;I)V

    .line 177
    iget-object v3, p0, Lcom/example/jifei/sp1$2$1$1;->val$macitivity:Landroid/app/Activity;

    const-string v4, "Activation failed,you can try again!"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
