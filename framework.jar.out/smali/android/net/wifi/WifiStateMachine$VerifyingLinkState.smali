.class Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3339
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3342
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 3343
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 3344
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3345
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 3348
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3356
    const/4 v0, 0x0

    .line 3358
    :goto_0
    return v0

    .line 3353
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$20200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$20300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3358
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3348
    :pswitch_data_0
    .packed-switch 0x21015
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method