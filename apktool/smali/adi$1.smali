.class final Ladi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laej$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladi;


# direct methods
.method constructor <init>(Ladi;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Ladi$1;->a:Ladi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 112
    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 115
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Ladi$1;->a:Ladi;

    iget-object v5, v5, Ladi;->b:Laxn;

    invoke-virtual {v5, v4}, Laxn;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 122
    iget-object v4, p0, Ladi$1;->a:Ladi;

    iget-object v4, v4, Ladi;->d:Laed;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Laed;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Ladi$1;->a:Ladi;

    iget-object v5, v5, Ladi;->b:Laxn;

    invoke-virtual {v5, v4}, Laxn;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 132
    iget-object v4, p0, Ladi$1;->a:Ladi;

    iget-object v4, v4, Ladi;->d:Laed;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Laed;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 135
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Ladi$1;->a:Ladi;

    iget-object v4, v4, Ladi;->b:Laxn;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laxn;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 138
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 140
    iget-object v4, p0, Ladi$1;->a:Ladi;

    iget-object v4, v4, Ladi;->d:Laed;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Laed;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 142
    goto/16 :goto_0

    .line 145
    :cond_2
    if-eqz v1, :cond_3

    .line 146
    iget-object v0, p0, Ladi$1;->a:Ladi;

    iget-object v0, v0, Ladi;->c:Laej;

    invoke-virtual {v0}, Laej;->c()V

    .line 148
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method
