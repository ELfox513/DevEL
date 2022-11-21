.class public final Lh4/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/a$d$b;
.implements Lu3/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh4/d$a$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final d:I

.field public final k:Z

.field public final p:I

.field public final q:Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final r:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Z

.field public final t:Z

.field public final u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final v:Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final w:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIZI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lh4/d$a;->a:Z

    iput-boolean p2, p0, Lh4/d$a;->b:Z

    iput p3, p0, Lh4/d$a;->d:I

    iput-boolean p4, p0, Lh4/d$a;->k:Z

    iput p5, p0, Lh4/d$a;->p:I

    iput-object p6, p0, Lh4/d$a;->q:Ljava/lang/String;

    iput-object p7, p0, Lh4/d$a;->r:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lh4/d$a;->s:Z

    iput-boolean p9, p0, Lh4/d$a;->t:Z

    iput-object p10, p0, Lh4/d$a;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p11, p0, Lh4/d$a;->v:Ljava/lang/String;

    iput p12, p0, Lh4/d$a;->w:I

    iput p13, p0, Lh4/d$a;->x:I

    iput p14, p0, Lh4/d$a;->y:I

    return-void
.end method

.method public synthetic constructor <init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IIILh4/q;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lh4/d$a;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;III)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lh4/d$a;)Lh4/d$a$a;
    .locals 1
    .param p0    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance p1, Lh4/d$a$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lh4/d$a$a;-><init>(Lh4/d$a;Lh4/q;)V

    iput-object p0, p1, Lh4/d$a$a;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1
.end method

.method public static synthetic b(Lh4/d$a;)I
    .locals 0

    iget p0, p0, Lh4/d$a;->w:I

    return p0
.end method


# virtual methods
.method public final c()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lh4/d$a;->a:Z

    const-string v2, "com.google.android.gms.games.key.isHeadless"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lh4/d$a;->b:Z

    const-string v2, "com.google.android.gms.games.key.showConnectingPopup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lh4/d$a;->d:I

    const-string v2, "com.google.android.gms.games.key.connectingPopupGravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lh4/d$a;->k:Z

    const-string v2, "com.google.android.gms.games.key.retryingSignIn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lh4/d$a;->p:I

    const-string v2, "com.google.android.gms.games.key.sdkVariant"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lh4/d$a;->q:Ljava/lang/String;

    const-string v2, "com.google.android.gms.games.key.forceResolveAccountKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lh4/d$a;->r:Ljava/util/ArrayList;

    const-string v2, "com.google.android.gms.games.key.proxyApis"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-boolean v1, p0, Lh4/d$a;->s:Z

    const-string v2, "com.google.android.gms.games.key.unauthenticated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lh4/d$a;->t:Z

    const-string v2, "com.google.android.gms.games.key.skipWelcomePopup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lh4/d$a;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v2, "com.google.android.gms.games.key.googleSignInAccount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lh4/d$a;->v:Ljava/lang/String;

    const-string v2, "com.google.android.gms.games.key.realClientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lh4/d$a;->x:I

    const-string v2, "com.google.android.gms.games.key.API_VERSION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lh4/d$a;->y:I

    const-string v2, "com.google.android.gms.games.key.authenticationStrategy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh4/d$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh4/d$a;

    iget-boolean v1, p0, Lh4/d$a;->a:Z

    iget-boolean v3, p1, Lh4/d$a;->a:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lh4/d$a;->b:Z

    iget-boolean v3, p1, Lh4/d$a;->b:Z

    if-ne v1, v3, :cond_4

    iget v1, p0, Lh4/d$a;->d:I

    iget v3, p1, Lh4/d$a;->d:I

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lh4/d$a;->k:Z

    iget-boolean v3, p1, Lh4/d$a;->k:Z

    if-ne v1, v3, :cond_4

    iget v1, p0, Lh4/d$a;->p:I

    iget v3, p1, Lh4/d$a;->p:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lh4/d$a;->q:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lh4/d$a;->q:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lh4/d$a;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lh4/d$a;->r:Ljava/util/ArrayList;

    iget-object v3, p1, Lh4/d$a;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lh4/d$a;->s:Z

    iget-boolean v3, p1, Lh4/d$a;->s:Z

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lh4/d$a;->t:Z

    iget-boolean v3, p1, Lh4/d$a;->t:Z

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lh4/d$a;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_3

    iget-object v1, p1, Lh4/d$a;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lh4/d$a;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lh4/d$a;->v:Ljava/lang/String;

    iget-object v3, p1, Lh4/d$a;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lh4/d$a;->w:I

    iget v3, p1, Lh4/d$a;->w:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lh4/d$a;->x:I

    iget v3, p1, Lh4/d$a;->x:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lh4/d$a;->y:I

    iget p1, p1, Lh4/d$a;->y:I

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lh4/d$a;->a:Z

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lh4/d$a;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lh4/d$a;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lh4/d$a;->k:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lh4/d$a;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh4/d$a;->q:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh4/d$a;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lh4/d$a;->s:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lh4/d$a;->t:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh4/d$a;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh4/d$a;->v:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lh4/d$a;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lh4/d$a;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lh4/d$a;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final q0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lh4/d$a;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method
