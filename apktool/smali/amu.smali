.class public final Lamu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamu$a;,
        Lamu$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/notification/AndroidNotificationManager$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/notification/AndroidNotificationManager$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/snapchat/android/ui/InAppPromptFlipper;

.field protected b:Z

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamu$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private final j:Lbhk;

.field private final k:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 57
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ADDFRIEND:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v3, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->REPLAY:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SCREENSHOT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v7, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT_SCREENSHOT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v7, v6, v8

    sget-object v7, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v7, v6, v9

    invoke-static/range {v0 .. v6}, Ldr;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ldr;

    move-result-object v0

    sput-object v0, Lamu;->g:Ljava/util/Set;

    .line 72
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->REPLAY:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v3, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SCREENSHOT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT_SCREENSHOT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    new-array v6, v9, [Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v7, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v6}, Ldr;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ldr;

    move-result-object v0

    sput-object v0, Lamu;->h:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 92
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v3, Lbhk;

    invoke-direct {v3}, Lbhk;-><init>()V

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lamu;-><init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicLong;Lbhk;Ljava/util/Map;Ljava/util/Map;Lcom/squareup/otto/Bus;)V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lamu;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicLong;Lbhk;Ljava/util/Map;Ljava/util/Map;Lcom/squareup/otto/Bus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamu$a;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lbhk;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/squareup/otto/Bus;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lamu;->i:Z

    .line 47
    iput-boolean v0, p0, Lamu;->b:Z

    .line 100
    iput-object p1, p0, Lamu;->c:Ljava/util/List;

    .line 101
    iput-object p2, p0, Lamu;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 102
    iput-object p3, p0, Lamu;->j:Lbhk;

    .line 103
    iput-object p4, p0, Lamu;->e:Ljava/util/Map;

    .line 104
    iput-object p5, p0, Lamu;->f:Ljava/util/Map;

    .line 105
    iput-object p6, p0, Lamu;->k:Lcom/squareup/otto/Bus;

    .line 106
    return-void
.end method

.method private a(Lamt;)Lamu$a;
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Lamu;->c:Ljava/util/List;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lamu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamu$a;

    .line 199
    invoke-interface {p1, v0}, Lamt;->b(Lamu$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_1
    :try_start_1
    iget-object v0, p0, Lamu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamu$a;

    .line 205
    invoke-interface {p1, v0}, Lamt;->a(Lamu$a;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    monitor-exit v1

    .line 210
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static a()Lamu;
    .locals 1

    .prologue
    .line 110
    sget v0, Lamu$b;->a:I

    invoke-static {}, Lamu$b;->a()Lamu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lamu;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lamu;->k:Lcom/squareup/otto/Bus;

    return-object v0
.end method


# virtual methods
.method public final a(Lajk;)V
    .locals 2
    .param p1    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamu;->b:Z

    .line 340
    iget-object v0, p0, Lamu;->k:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdb;

    invoke-direct {v1}, Lbdb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public final a(Laka;Lajk;)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamu;->b:Z

    .line 325
    return-void
.end method

.method public final a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 0
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 335
    return-void
.end method

.method public final a(Lamt;Landroid/view/ViewStub;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 239
    invoke-static {}, Lbhp;->a()V

    .line 240
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-boolean v0, p0, Lamu;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lamu;->b:Z

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lamu;->a(Lamt;)Lamu$a;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 254
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v1, Lamu$a;->a:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, v1, Lamu$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x2

    iget-object v3, v1, Lamu$a;->d:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {p0, p2}, Lamu;->a(Landroid/view/ViewStub;)V

    iput-boolean v4, p0, Lamu;->i:Z

    iget-object v0, p0, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    const v2, 0x7f0a025b

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/InAppPromptFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/InAppPromptView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptView;->set(Lamu$a;)V

    iget-object v0, p0, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->a()V

    iget-wide v2, v1, Lamu$a;->e:J

    iget-object v1, p0, Lamu;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lamu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamu$a;

    iget-wide v6, v0, Lamu$a;->e:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    new-instance v1, Lamu$1;

    invoke-direct {v1, p0}, Lamu$1;-><init>(Lamu;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/InAppPromptFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Landroid/view/ViewStub;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/InAppPromptFlipper;

    iput-object v0, p0, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lbhp;->a()V

    .line 288
    iget-boolean v0, p0, Lamu;->i:Z

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lamu;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->b()V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamu;->i:Z

    goto :goto_0
.end method

.method public final d(Laka;)V
    .locals 0
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 329
    return-void
.end method
