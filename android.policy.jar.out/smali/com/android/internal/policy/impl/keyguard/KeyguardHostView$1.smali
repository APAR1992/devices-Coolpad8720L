.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    const-string v0, "KeyguardHostView"

    const-string v1, "-------onBootCompleted----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    .line 333
    :cond_1
    return-void
.end method

.method onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .locals 4
    .parameter "clientGeneration"
    .parameter "clearing"
    .parameter "intent"

    .prologue
    const/4 v0, 0x2

    .line 344
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mClientGeneration:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    .line 345
    :cond_0
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_5

    const-string v1, "hide"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " transport, gen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput p1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mClientGeneration:I

    .line 348
    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 351
    .local v0, newState:I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 352
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)I

    .line 353
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_3

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: transport state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 356
    :cond_4
    return-void

    .line 345
    .end local v0           #newState:I
    :cond_5
    const-string v1, "show"

    goto :goto_0

    .line 348
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .locals 4
    .parameter "playbackState"
    .parameter "eventTime"

    .prologue
    .line 359
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isMusicPlaying(I)Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$500(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    .line 363
    .local v0, newState:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)I

    .line 365
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: play state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 369
    .end local v0           #newState:I
    :cond_2
    return-void

    .line 361
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 339
    :cond_0
    return-void
.end method
