.class Lcom/android/server/wifi/WifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 283
    const-string v1, "voipEvent"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, voipSwitch:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    #calls: Lcom/android/server/wifi/WifiService;->grabWifiHighPerfLock()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)V

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    #calls: Lcom/android/server/wifi/WifiService;->releaseWifiHighPerfLock()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)V

    goto :goto_0
.end method