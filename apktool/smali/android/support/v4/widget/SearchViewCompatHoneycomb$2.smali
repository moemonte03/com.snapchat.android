.class final Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;->val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method