.class public final Larz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Larx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laqd;Lase;I)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1

    .prologue
    .line 13
    if-nez p3, :cond_0

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lase;->a(I)V

    .line 15
    iget v0, p2, Lase;->c:F

    invoke-interface {p1, v0}, Laqd;->a(F)V

    .line 16
    sget-object v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;->SWIPE_STARTED:Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Laqd;Lase;II)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Laqd;Lase;Landroid/view/MotionEvent;)Lcom/snapchat/android/ui/snapeditormotion/SwipeHandlerType;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
