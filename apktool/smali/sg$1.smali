.class final Lsg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lsg;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lsg$1;->this$0:Lsg;

    iput-object p2, p0, Lsg$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V
    .locals 2
    .param p1    # Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v0, p0, Lsg$1;->this$0:Lsg;

    invoke-static {v0, p2}, Ltd;->a(Lrl;I)Ljava/util/List;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lsg$1;->this$0:Lsg;

    invoke-static {v1, v0}, Lsg;->b(Lsg;Ljava/util/List;)V

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lsg$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lsg$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "SQUARE_PHONE_VERIFICATION_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 98
    const v0, 0x7f0c01aa

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lqw;->a(I[Ljava/lang/Object;)V

    .line 103
    :cond_1
    :goto_1
    iget-object v0, p0, Lsg$1;->this$0:Lsg;

    invoke-static {v0}, Lsg;->c(Lsg;)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "SQUARE_PHONE_VERIFICATION_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/api2/cash/ScCashResponsePayload;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 43
    check-cast p1, Lra$a;

    .line 47
    iget-object v0, p1, Lra$a;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lra$a;->signature:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lsg$1;->this$0:Lsg;

    invoke-static {v0}, Lsg;->a(Lsg;)V

    .line 87
    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance v0, Lsg$1$1;

    invoke-direct {v0, p0}, Lsg$1$1;-><init>(Lsg$1;)V

    .line 78
    iget-object v1, p0, Lsg$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsg$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v1, v1, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v1, :cond_2

    .line 79
    new-instance v1, Lsu;

    iget-object v2, p0, Lsg$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, v2, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    iget-object v3, p1, Lra$a;->phoneNumber:Ljava/lang/String;

    iget-object v4, p1, Lra$a;->signature:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lsu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V

    invoke-virtual {v1}, Lsu;->execute()V

    goto :goto_0

    .line 84
    :cond_2
    new-instance v1, Lsu;

    iget-object v2, p1, Lra$a;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lra$a;->signature:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lsu;-><init>(Ljava/lang/String;Ljava/lang/String;Lsx$a;)V

    invoke-virtual {v1}, Lsu;->execute()V

    goto :goto_0
.end method
