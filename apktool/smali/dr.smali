.class public abstract Ldr;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ldj",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ldj;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 6
    .annotation build Lcf;
    .end annotation

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 249
    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_0

    .line 251
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 252
    :goto_0
    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 253
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    if-ge p0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lco;->a(ZLjava/lang/Object;)V

    move v0, v1

    .line 260
    :cond_1
    return v0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static varargs a(I[Ljava/lang/Object;)Ldr;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Ldr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 179
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 189
    invoke-static {p0}, Ldr;->a(I)I

    move-result v5

    .line 190
    new-array v6, v5, [Ljava/lang/Object;

    .line 191
    add-int/lit8 v7, v5, -0x1

    move v3, v4

    move v1, v4

    move v2, v4

    .line 194
    :goto_1
    if-ge v3, p0, :cond_1

    .line 195
    aget-object v0, p1, v3

    invoke-static {v0, v3}, Ldw;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 196
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 197
    invoke-static {v9}, Ldh;->a(I)I

    move-result v0

    .line 198
    :goto_2
    and-int v10, v0, v7

    .line 199
    aget-object v11, v6, v10

    .line 200
    if-nez v11, :cond_0

    .line 202
    add-int/lit8 v0, v1, 0x1

    aput-object v8, p1, v1

    .line 203
    aput-object v8, v6, v10

    .line 204
    add-int v1, v2, v9

    .line 194
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 181
    :pswitch_0
    sget-object v0, Ldb;->a:Ldb;

    .line 225
    :goto_4
    return-object v0

    .line 184
    :pswitch_1
    aget-object v0, p1, v4

    .line 185
    invoke-static {v0}, Ldr;->a(Ljava/lang/Object;)Ldr;

    move-result-object v0

    goto :goto_4

    .line 206
    :cond_0
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 211
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v1, p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 212
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 215
    aget-object v1, p1, v4

    .line 216
    new-instance v0, Lee;

    invoke-direct {v0, v1, v2}, Lee;-><init>(Ljava/lang/Object;I)V

    goto :goto_4

    .line 217
    :cond_2
    invoke-static {v1}, Ldr;->a(I)I

    move-result v0

    if-eq v5, v0, :cond_3

    move p0, v1

    .line 220
    goto :goto_0

    .line 222
    :cond_3
    array-length v0, p1

    if-ge v1, v0, :cond_4

    invoke-static {p1, v1}, Ldw;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 225
    :cond_4
    new-instance v0, Leb;

    invoke-direct {v0, p1, v2, v6, v7}, Leb;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_4

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_3

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Ldr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ldr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lee;

    invoke-direct {v0, p0}, Lee;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ldr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Ldr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 105
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Ldr;->a(I[Ljava/lang/Object;)Ldr;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ldr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Ldr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 127
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v2, v0}, Ldr;->a(I[Ljava/lang/Object;)Ldr;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ldr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Ldr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 138
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v2, v0}, Ldr;->a(I[Ljava/lang/Object;)Ldr;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ldr;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Ldr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    aput-object p0, v0, v3

    .line 154
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 155
    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 156
    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 157
    const/4 v1, 0x4

    aput-object p4, v0, v1

    .line 158
    const/4 v1, 0x5

    aput-object p5, v0, v1

    .line 159
    const/4 v1, 0x6

    array-length v2, p6

    invoke-static {p6, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    array-length v1, v0

    invoke-static {v1, v0}, Ldr;->a(I[Ljava/lang/Object;)Ldr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()Lef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lef",
            "<TE;>;"
        }
    .end annotation
.end method

.method c()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    if-ne p1, p0, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    .line 393
    :cond_0
    instance-of v0, p1, Ldr;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ldr;

    invoke-virtual {v0}, Ldr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldr;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 397
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {p0, p1}, Lec;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Ldr;->a()Lef;

    move-result-object v0

    return-object v0
.end method
