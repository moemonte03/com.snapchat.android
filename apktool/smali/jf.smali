.class public final Ljf;
.super Lml;
.source "SourceFile"


# instance fields
.field private final eventName:Ljava/lang/String;

.field public hasDisplayName:Ljava/lang/Boolean;

.field public method:Lil;

.field public source:Lkh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 36
    const-string v0, "PROFILE_FRIEND_REQUEST_DELETE"

    iput-object v0, p0, Ljf;->eventName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    const-string v1, "event_name"

    const-string v2, "PROFILE_FRIEND_REQUEST_DELETE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "has_display_name"

    iget-object v2, p0, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    iget-object v1, p0, Ljf;->method:Lil;

    if-eqz v1, :cond_1

    const-string v1, "method"

    iget-object v2, p0, Ljf;->method:Lil;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    iget-object v1, p0, Ljf;->source:Lkh;

    if-eqz v1, :cond_2

    const-string v1, "source"

    iget-object v2, p0, Ljf;->source:Lkh;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_2
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 58
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 60
    :cond_4
    check-cast p1, Ljf;

    .line 62
    iget-object v2, p0, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    iget-object v3, p1, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    .line 63
    :cond_7
    iget-object v2, p0, Ljf;->method:Lil;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ljf;->method:Lil;

    iget-object v3, p1, Ljf;->method:Lil;

    invoke-virtual {v2, v3}, Lil;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Ljf;->method:Lil;

    if-nez v2, :cond_8

    .line 64
    :cond_a
    iget-object v2, p0, Ljf;->source:Lkh;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ljf;->source:Lkh;

    iget-object v3, p1, Ljf;->source:Lkh;

    invoke-virtual {v2, v3}, Lkh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Ljf;->source:Lkh;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 71
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljf;->hasDisplayName:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 72
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ljf;->method:Lil;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljf;->method:Lil;

    invoke-virtual {v0}, Lil;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ljf;->source:Lkh;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ljf;->source:Lkh;

    invoke-virtual {v1}, Lkh;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 74
    return v0

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0

    :cond_2
    move v0, v1

    .line 72
    goto :goto_1
.end method
