.class public final Lafo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lafo;


# direct methods
.method public constructor <init>(Lafo;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lafo$1;->c:Lafo;

    iput-object p2, p0, Lafo$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lafo$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lafo$1;->c:Lafo;

    iget-object v1, p0, Lafo$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lafo$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lafo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
