.class final Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MorningWatchStartReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 312
    iget-object v4, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v4, v4, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v5, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v5, v5, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 313
    iget-object v4, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v4, v4, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v5, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v5, v5, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 317
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    .line 318
    .local v0, availableMemory:J
    iget-object v4, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses()J
    invoke-static {v4}, Lcom/android/server/ylWatchdog;->access$100(Lcom/android/server/ylWatchdog;)J

    move-result-wide v2

    .line 320
    .local v2, totalPssOfPersistentProcesses:J
    iget-object v4, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/ylWatchdog;->isNecessaryToRebootByStealthInTheMorning(JJ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    const-string v4, "ylWatchdog"

    const-string v5, "MorningWatchStartReceiver, The alarm is cancelled for there\'s enough memory available"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v4, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z
    invoke-static {v4}, Lcom/android/server/ylWatchdog;->access$200(Lcom/android/server/ylWatchdog;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    const-string v4, "ylWatchdog"

    const-string v5, "MorningWatchStartReceiver, The alarm is cancelled for the data service is active"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    const-string v5, "lowmem"

    #calls: Lcom/android/server/ylWatchdog;->rebootOnLowMemory(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/ylWatchdog;->access$300(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z

    goto :goto_0
.end method
