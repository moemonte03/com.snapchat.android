.class final Lbnc$1;
.super Lbnc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmx;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lbmx;I[B)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lbnc$1;->a:Lbmx;

    iput p2, p0, Lbnc$1;->b:I

    iput-object p3, p0, Lbnc$1;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Lbnc$1;->d:I

    invoke-direct {p0}, Lbnc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbmx;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lbnc$1;->a:Lbmx;

    return-object v0
.end method

.method public final a(Lcaw;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lbnc$1;->c:[B

    iget v1, p0, Lbnc$1;->d:I

    iget v2, p0, Lbnc$1;->b:I

    invoke-interface {p1, v0, v1, v2}, Lcaw;->c([BII)Lcaw;

    .line 79
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lbnc$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
