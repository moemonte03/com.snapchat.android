.class public final Lbtg$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbtk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lbsl;Lbsl;Ljava/lang/String;Landroid/content/Context;Lbrv;Lbud;)Lbtj;
    .locals 7

    .prologue
    .line 45
    new-instance v0, Lbtg;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbtg;-><init>(Lbsl;Lbsl;Ljava/lang/String;Landroid/content/Context;Lbrv;Lbud;)V

    return-object v0
.end method
