.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19$1;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19$1;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;

    iget-object v0, v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->e(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lwc;

    move-result-object v0

    invoke-virtual {v0}, Lwc;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19$1;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;

    iget-object v0, v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbhr;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19$1;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;

    iget-object v0, v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$19;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->f(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lbhr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    goto :goto_0
.end method
