.class public Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhotoAppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildFrameWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;
    .locals 10
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "entry"

    .prologue
    .line 112
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f04003e

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 115
    .local v6, views:Landroid/widget/RemoteViews;
    :try_start_0
    iget-object v2, p2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    .line 116
    .local v2, data:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const v7, 0x7f1000d6

    invoke-virtual {v6, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #data:[B
    :goto_0
    iget-object v7, p2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 124
    :try_start_1
    iget-object v7, p2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 125
    .local v5, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/gallery3d/gadget/WidgetClickHandler;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, clickIntent:Landroid/content/Intent;
    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 129
    .local v3, pendingClickIntent:Landroid/app/PendingIntent;
    const v7, 0x7f1000d6

    invoke-virtual {v6, v7, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .end local v1           #clickIntent:Landroid/content/Intent;
    .end local v3           #pendingClickIntent:Landroid/app/PendingIntent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-object v6

    .line 118
    :catch_0
    move-exception v4

    .line 119
    .local v4, t:Ljava/lang/Throwable;
    const-string v7, "WidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot load widget image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v4           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 131
    .restart local v4       #t:Ljava/lang/Throwable;
    const-string v7, "WidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot load widget uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static buildStackWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "context"
    .parameter "widgetId"
    .parameter "entry"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v6, 0x7f10000d

    .line 88
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040005

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 91
    .local v3, views:Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/gallery3d/gadget/WidgetService;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v4, "widget-type"

    iget v5, p2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v4, "album-path"

    iget-object v5, p2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget://gallery/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v3, p1, v6, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 101
    const v4, 0x7f10000b

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/gallery3d/gadget/WidgetClickHandler;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, clickIntent:Landroid/content/Intent;
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 106
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, v6, v2}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 108
    return-object v3
.end method

.method static buildWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "entry"

    .prologue
    .line 42
    iget v0, p2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    packed-switch v0, :pswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->buildStackWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->buildFrameWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 140
    new-instance v2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 141
    .local v2, helper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 142
    .local v0, appWidgetId:I
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->deleteEntry(I)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v0           #appWidgetId:I
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 145
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 11
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 56
    sget-boolean v8, Lcom/android/gallery3d/common/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    if-eqz v8, :cond_0

    .line 58
    invoke-static {p1}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->migrateGalleryWidgets(Landroid/content/Context;)V

    .line 61
    :cond_0
    new-instance v2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, helper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    move-object v0, p3

    .local v0, arr$:[I
    :try_start_0
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget v4, v0, v3

    .line 64
    .local v4, id:I
    invoke-virtual {v2, v4}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v1

    .line 65
    .local v1, entry:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    if-eqz v1, :cond_1

    .line 66
    invoke-static {p1, v4, v1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->buildWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 67
    .local v7, views:Landroid/widget/RemoteViews;
    invoke-virtual {p2, v4, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 63
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v7           #views:Landroid/widget/RemoteViews;
    :cond_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 71
    .local v6, manager:Landroid/appwidget/AppWidgetManager;
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f040005

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 73
    .restart local v7       #views:Landroid/widget/RemoteViews;
    const v8, 0x7f10000d

    const v9, 0x7f10000b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 74
    invoke-virtual {v6, v4, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 76
    const-string v8, "WidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot load widget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 80
    .end local v1           #entry:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .end local v3           #i$:I
    .end local v4           #id:I
    .end local v5           #len$:I
    .end local v6           #manager:Landroid/appwidget/AppWidgetManager;
    .end local v7           #views:Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    throw v8

    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 83
    return-void
.end method
