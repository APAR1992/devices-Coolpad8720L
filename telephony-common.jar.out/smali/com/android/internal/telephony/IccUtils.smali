.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"

.field private static hexString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 491
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HexToChar(I)C
    .locals 1
    .parameter "data"

    .prologue
    const/16 v0, 0x30

    .line 130
    packed-switch p0, :pswitch_data_0

    .line 165
    :goto_0
    :pswitch_0
    return v0

    .line 135
    :pswitch_1
    const/16 v0, 0x31

    goto :goto_0

    .line 137
    :pswitch_2
    const/16 v0, 0x32

    goto :goto_0

    .line 139
    :pswitch_3
    const/16 v0, 0x33

    goto :goto_0

    .line 141
    :pswitch_4
    const/16 v0, 0x34

    goto :goto_0

    .line 143
    :pswitch_5
    const/16 v0, 0x35

    goto :goto_0

    .line 145
    :pswitch_6
    const/16 v0, 0x36

    goto :goto_0

    .line 147
    :pswitch_7
    const/16 v0, 0x37

    goto :goto_0

    .line 149
    :pswitch_8
    const/16 v0, 0x38

    goto :goto_0

    .line 151
    :pswitch_9
    const/16 v0, 0x39

    goto :goto_0

    .line 153
    :pswitch_a
    const/16 v0, 0x41

    goto :goto_0

    .line 155
    :pswitch_b
    const/16 v0, 0x42

    goto :goto_0

    .line 157
    :pswitch_c
    const/16 v0, 0x43

    goto :goto_0

    .line 159
    :pswitch_d
    const/16 v0, 0x44

    goto :goto_0

    .line 161
    :pswitch_e
    const/16 v0, 0x45

    goto :goto_0

    .line 163
    :pswitch_f
    const/16 v0, 0x46

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 259
    if-nez p2, :cond_1

    .line 260
    const-string v0, ""

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 264
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 392
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static adnStringFieldToStringKsc5601Support([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 280
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/SimRegionCache;->getRegion()I

    move-result v4

    const/16 v5, 0x1c2

    if-ne v4, v5, :cond_2

    .line 285
    move v1, p1

    .line 286
    .local v1, len:I
    const/4 v3, -0x1

    .line 287
    .local v3, stop:B
    :goto_0
    if-ge v1, p2, :cond_0

    :try_start_0
    aget-byte v4, p0, v1

    if-eq v4, v3, :cond_0

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #s:Ljava/lang/String;
    const-string v4, "KSC5601"

    invoke-direct {v2, p0, p1, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1           #len:I
    .end local v3           #stop:B
    :cond_1
    :goto_1
    return-object v2

    .line 291
    .restart local v1       #len:I
    .restart local v3       #stop:B
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #len:I
    .end local v3           #stop:B
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToStringGsm8BitHelper([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static adnStringFieldToStringUcs2Helper([BII)Ljava/lang/String;
    .locals 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 303
    const/4 v10, 0x1

    if-lt p2, v10, :cond_1

    .line 304
    aget-byte v10, p0, p1

    const/16 v11, -0x80

    if-ne v10, v11, :cond_1

    .line 305
    add-int/lit8 v10, p2, -0x1

    div-int/lit8 v9, v10, 0x2

    .line 306
    .local v9, ucslen:I
    const/4 v7, 0x0

    .line 309
    .local v7, ret:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v10, p1, 0x1

    mul-int/lit8 v11, v9, 0x2

    const-string v12, "utf-16be"

    invoke-direct {v8, p0, v10, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #ret:Ljava/lang/String;
    .local v8, ret:Ljava/lang/String;
    move-object v7, v8

    .line 315
    .end local v8           #ret:Ljava/lang/String;
    .restart local v7       #ret:Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    .line 318
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 319
    :goto_1
    if-lez v9, :cond_0

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v11, 0xffff

    if-ne v10, v11, :cond_0

    .line 320
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 310
    :catch_0
    move-exception v3

    .line 311
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "IccUtils"

    const-string v11, "implausible UnsupportedEncodingException"

    invoke-static {v10, v11, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 322
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 387
    .end local v7           #ret:Ljava/lang/String;
    .end local v9           #ucslen:I
    :goto_2
    return-object v10

    .line 327
    :cond_1
    const/4 v4, 0x0

    .line 328
    .local v4, isucs2:Z
    const/4 v0, 0x0

    .line 329
    .local v0, base:C
    const/4 v5, 0x0

    .line 331
    .local v5, len:I
    const/4 v10, 0x3

    if-lt p2, v10, :cond_5

    aget-byte v10, p0, p1

    const/16 v11, -0x7f

    if-ne v10, v11, :cond_5

    .line 332
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 333
    add-int/lit8 v10, p2, -0x3

    if-le v5, v10, :cond_2

    .line 334
    add-int/lit8 v5, p2, -0x3

    .line 336
    :cond_2
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x7

    int-to-char v0, v10

    .line 337
    add-int/lit8 p1, p1, 0x3

    .line 338
    const/4 v4, 0x1

    .line 350
    :cond_3
    :goto_3
    if-eqz v4, :cond_9

    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v7, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v5, :cond_8

    .line 356
    aget-byte v10, p0, p1

    if-gez v10, :cond_4

    .line 357
    aget-byte v10, p0, p1

    and-int/lit8 v10, v10, 0x7f

    add-int/2addr v10, v0

    int-to-char v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    add-int/lit8 p1, p1, 0x1

    .line 359
    add-int/lit8 v5, v5, -0x1

    .line 364
    :cond_4
    const/4 v1, 0x0

    .line 365
    .local v1, count:I
    :goto_5
    if-ge v1, v5, :cond_7

    add-int v10, p1, v1

    aget-byte v10, p0, v10

    if-ltz v10, :cond_7

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 339
    .end local v1           #count:I
    .end local v7           #ret:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v10, 0x4

    if-lt p2, v10, :cond_3

    aget-byte v10, p0, p1

    const/16 v11, -0x7e

    if-ne v10, v11, :cond_3

    .line 340
    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    .line 341
    add-int/lit8 v10, p2, -0x4

    if-le v5, v10, :cond_6

    .line 342
    add-int/lit8 v5, p2, -0x4

    .line 344
    :cond_6
    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, p1, 0x3

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    int-to-char v0, v10

    .line 346
    add-int/lit8 p1, p1, 0x4

    .line 347
    const/4 v4, 0x1

    goto :goto_3

    .line 368
    .restart local v1       #count:I
    .restart local v7       #ret:Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    add-int/2addr p1, v1

    .line 372
    sub-int/2addr v5, v1

    .line 373
    goto :goto_4

    .line 375
    .end local v1           #count:I
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 379
    .end local v7           #ret:Ljava/lang/StringBuilder;
    :cond_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 380
    .local v6, resource:Landroid/content/res/Resources;
    const-string v2, ""

    .line 382
    .local v2, defaultCharset:Ljava/lang/String;
    const v10, 0x1040024

    :try_start_1
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 387
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, p1, p2, v10}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 384
    :catch_1
    move-exception v10

    goto :goto_6
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 51
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 52
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 63
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 53
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 58
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 47
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    if-gt v2, v4, :cond_0

    .line 60
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static bcdToStringExt([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_3

    .line 79
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 80
    .local v2, v:I
    if-gt v2, v4, :cond_0

    .line 81
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :goto_1
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 86
    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 76
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    :cond_1
    if-gt v2, v4, :cond_2

    .line 88
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 90
    :cond_2
    add-int/lit8 v3, v2, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 93
    .end local v2           #v:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static bitToRGB(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 627
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 628
    const/4 v0, -0x1

    .line 630
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 442
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 458
    :goto_0
    return-object v3

    .line 444
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 449
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 451
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 455
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 458
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static bytesToHexStringCapital([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 468
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 484
    :goto_0
    return-object v3

    .line 470
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 472
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 475
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 477
    .local v0, b:I
    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 481
    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 484
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 210
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 211
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 214
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 215
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 218
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x9

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 104
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 106
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 107
    .local v3, v:I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 108
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 117
    .end local v3           #v:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 112
    .restart local v3       #v:I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 113
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 114
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 723
    if-nez p0, :cond_1

    .line 724
    const/4 v4, 0x0

    .line 738
    :cond_0
    return-object v4

    .line 727
    :cond_1
    new-array v4, p2, [I

    .line 728
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 729
    .local v3, endIndex:I
    move v5, p1

    .line 730
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 731
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 733
    .local v0, alpha:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 737
    if-ge v6, v3, :cond_0

    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 188
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 189
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 192
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 193
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 196
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 397
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 399
    :goto_0
    return v0

    .line 398
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 399
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 401
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 418
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 429
    :cond_0
    return-object v1

    .line 420
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 422
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 424
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 425
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 424
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 673
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 674
    const-string v9, "IccUtils"

    const-string v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 706
    :goto_0
    return-object v2

    .line 679
    :cond_0
    const/4 v0, 0x1

    .line 680
    .local v0, mask:I
    packed-switch p4, :pswitch_data_0

    .line 695
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 696
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 697
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 698
    .end local p1
    .local v8, valueIndex:I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 699
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 700
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 701
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 702
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 700
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_3

    .line 682
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_1
    const/4 v0, 0x1

    .line 683
    goto :goto_1

    .line 685
    :pswitch_2
    const/4 v0, 0x3

    .line 686
    goto :goto_1

    .line 688
    :pswitch_3
    const/16 v0, 0xf

    .line 689
    goto :goto_1

    .line 691
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_1
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 705
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_2

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_2
    move p1, v8

    .line 706
    .end local v8           #valueIndex:I
    .restart local p1
    goto :goto_0

    .line 680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 711
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 712
    const-string v1, "IccUtils"

    const-string v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 719
    :goto_0
    return-object v0

    .line 717
    :cond_0
    new-array v0, p2, [I

    .line 719
    .local v0, resultArray:[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 552
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    .line 553
    :cond_0
    const-string v2, ""

    .line 590
    :cond_1
    :goto_0
    return-object v2

    .line 556
    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 577
    const-string v2, ""

    .line 585
    .local v2, ret:Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    .line 560
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 561
    .local v3, unusedBits:I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 562
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 563
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 567
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 569
    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 570
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 571
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 600
    const/4 v8, 0x0

    .line 601
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 602
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 603
    .local v3, height:I
    mul-int v4, v10, v3

    .line 605
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 607
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 608
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 609
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 610
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 612
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 613
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 614
    const/4 v0, 0x7

    .line 616
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 619
    :cond_0
    if-eq v6, v4, :cond_1

    .line 620
    const-string v11, "IccUtils"

    const-string v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 644
    const/4 v6, 0x0

    .line 645
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 646
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 647
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 648
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 649
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 653
    .local v1, clutOffset:I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 654
    .local v2, colorIndexArray:[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    .line 655
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 658
    :cond_0
    const/4 v5, 0x0

    .line 659
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 660
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 667
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 663
    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method

.method public static stringToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x80

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, bUnicode:Z
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 498
    .local v1, bytes:[B
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 501
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 503
    aget-byte v6, v1, v3

    if-le v6, v8, :cond_2

    .line 504
    const/4 v0, 0x1

    .line 509
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_3

    .line 511
    aget-byte v6, v1, v2

    if-ge v6, v8, :cond_1

    .line 512
    if-eqz v0, :cond_1

    .line 513
    sget-object v6, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    sget-object v6, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    sget-object v6, Lcom/android/internal/telephony/IccUtils;->hexString:Ljava/lang/String;

    aget-byte v7, v1, v2

    and-int/lit8 v7, v7, 0xf

    shr-int/lit8 v7, v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 501
    .end local v2           #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    .restart local v2       #i:I
    :cond_3
    if-eqz v0, :cond_4

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "80"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 528
    .local v4, retString:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 525
    .end local v4           #retString:Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #retString:Ljava/lang/String;
    goto :goto_2
.end method
