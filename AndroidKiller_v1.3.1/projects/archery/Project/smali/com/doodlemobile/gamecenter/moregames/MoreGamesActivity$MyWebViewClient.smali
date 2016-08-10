.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MoreGamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$0(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load url error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 196
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 172
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 173
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v1, "intentMarket":Landroid/content/Intent;
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-virtual {v3, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    const/4 v3, 0x2

    const-string v4, "="

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, "Clicks"

    const-string v6, "MoreGamesActivity"

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "intentMarket":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v8

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$0(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const-string v3, "market://"

    const-string v4, "http://play.google.com/store/apps/"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$0(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->OpenNetWork(Landroid/app/Activity;)V

    goto :goto_0
.end method
