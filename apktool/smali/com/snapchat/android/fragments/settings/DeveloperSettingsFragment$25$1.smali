.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/AlertDialogUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 166
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    if-ne p1, v0, :cond_0

    .line 167
    invoke-static {v1}, Lbal;->a(Z)V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->a:Landroid/content/SharedPreferences;

    const-string v1, "https://cash-dot-feelinsonice-hrd.appspot.com"

    invoke-static {v0, v1}, Lbal;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->b:Landroid/widget/TextView;

    const-string v1, "https://cash-dot-feelinsonice-hrd.appspot.com"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {}, Lakr;->ah()V

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->a:Lyj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyj;->a(Lym;)V

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b:Lyn;

    invoke-virtual {v0}, Lyn;->b()V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;->a:Landroid/widget/CompoundButton;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method
