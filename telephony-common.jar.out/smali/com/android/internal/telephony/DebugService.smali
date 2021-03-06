.class public Lcom/android/internal/telephony/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "DebugService"

    sput-object v0, Lcom/android/internal/telephony/DebugService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "DebugService:"

    invoke-static {v0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 107
    sget-object v0, Lcom/android/internal/telephony/DebugService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DebugService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 44
    const-string v4, "dump: +"

    invoke-static {v4}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    const/4 v2, 0x0

    .line 49
    .local v2, phoneBase:Lcom/android/internal/telephony/PhoneBase;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 66
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 69
    :try_start_2
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 74
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    :try_start_3
    iget-object v4, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 80
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 81
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 87
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 88
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    :try_start_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 94
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 95
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    :try_start_6
    iget-object v4, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 101
    :goto_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 102
    const-string v4, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v4, "dump: -"

    invoke-static {v4}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 104
    :goto_5
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Telephony DebugService: Could not getDefaultPhone e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 56
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 57
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Telephony DebugService: Could not PhoneBase e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 70
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 71
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 78
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v1           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 85
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 91
    .end local v1           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 92
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 98
    .end local v1           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 99
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method
