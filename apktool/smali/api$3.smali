.class final Lapi$3;
.super Lbhf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapi;->b(Lcom/snapchat/android/model/StorySnapLogbook;Lapi$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Lapi$a;

.field final synthetic c:Lapi;


# direct methods
.method constructor <init>(Lapi;Landroid/content/Context;Lakl;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;Lcom/snapchat/android/model/StorySnapLogbook;Lapi$a;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lapi$3;->c:Lapi;

    iput-object p6, p0, Lapi$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iput-object p7, p0, Lapi$3;->b:Lapi$a;

    invoke-direct {p0, p2, p3, p4, p5}, Lbhf;-><init>(Landroid/content/Context;Lakl;Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lbhf;->a()V

    .line 137
    iget-object v0, p0, Lapi$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 138
    iget-object v0, p0, Lapi$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-static {v0}, Lapl;->b(Lakl;)V

    .line 139
    iget-object v0, p0, Lapi$3;->b:Lapi$a;

    invoke-interface {v0}, Lapi$a;->c()V

    .line 140
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lbhf;->b()V

    .line 144
    iget-object v0, p0, Lapi$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 145
    iget-object v0, p0, Lapi$3;->b:Lapi$a;

    invoke-interface {v0}, Lapi$a;->d()V

    .line 146
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lbhf;->onPreExecute()V

    .line 131
    iget-object v0, p0, Lapi$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 132
    iget-object v0, p0, Lapi$3;->b:Lapi$a;

    invoke-interface {v0}, Lapi$a;->a()V

    .line 133
    return-void
.end method
