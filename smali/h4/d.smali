.class public final Lh4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh4/d$b;,
        Lh4/d$a;
    }
.end annotation


# static fields
.field public static final a:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "Lk4/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Lk4/l;",
            "Lh4/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Lk4/l;",
            "Lh4/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final g:Lu3/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Lh4/d$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final i:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Lh4/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lh4/g;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final k:Li4/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final l:Lj4/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:Lm4/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:Lh4/m;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o:Lo4/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final p:Lp4/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final q:Lq4/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu3/a$g;

    invoke-direct {v0}, Lu3/a$g;-><init>()V

    sput-object v0, Lh4/d;->a:Lu3/a$g;

    new-instance v1, Lh4/q;

    invoke-direct {v1}, Lh4/q;-><init>()V

    sput-object v1, Lh4/d;->b:Lu3/a$a;

    new-instance v2, Lh4/r;

    invoke-direct {v2}, Lh4/r;-><init>()V

    sput-object v2, Lh4/d;->c:Lu3/a$a;

    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    const-string v4, "https://www.googleapis.com/auth/games"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v3, Lh4/d;->d:Lcom/google/android/gms/common/api/Scope;

    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    const-string v4, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v3, Lh4/d;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    const-string v4, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v3, Lh4/d;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v3, Lu3/a;

    const-string v4, "Games.API"

    invoke-direct {v3, v4, v1, v0}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v3, Lh4/d;->g:Lu3/a;

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "https://www.googleapis.com/auth/games.firstparty"

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v1, Lh4/d;->h:Lcom/google/android/gms/common/api/Scope;

    new-instance v1, Lu3/a;

    const-string v3, "Games.API_1P"

    invoke-direct {v1, v3, v2, v0}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v1, Lh4/d;->i:Lu3/a;

    new-instance v0, La5/i;

    invoke-direct {v0}, La5/i;-><init>()V

    sput-object v0, Lh4/d;->j:Lh4/g;

    new-instance v0, La5/y;

    invoke-direct {v0}, La5/y;-><init>()V

    sput-object v0, Lh4/d;->k:Li4/a;

    new-instance v0, La5/d;

    invoke-direct {v0}, La5/d;-><init>()V

    sput-object v0, Lh4/d;->l:Lj4/a;

    new-instance v0, La5/l;

    invoke-direct {v0}, La5/l;-><init>()V

    sput-object v0, Lh4/d;->m:Lm4/a;

    new-instance v0, La5/m;

    invoke-direct {v0}, La5/m;-><init>()V

    sput-object v0, Lh4/d;->n:Lh4/m;

    new-instance v0, La5/o;

    invoke-direct {v0}, La5/o;-><init>()V

    sput-object v0, Lh4/d;->o:Lo4/a;

    new-instance v0, La5/p;

    invoke-direct {v0}, La5/p;-><init>()V

    sput-object v0, Lh4/d;->p:Lp4/a;

    new-instance v0, La5/q;

    invoke-direct {v0}, La5/q;-><init>()V

    sput-object v0, Lh4/d;->q:Lq4/b;

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lh4/a;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "GoogleSignInAccount must not be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, La5/r;

    invoke-static {p1}, Lh4/d;->c(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lh4/d$a;

    move-result-object p1

    invoke-direct {v0, p0, p1}, La5/r;-><init>(Landroid/app/Activity;Lh4/d$a;)V

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lh4/e;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "GoogleSignInAccount must not be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, La5/e;

    invoke-static {p1}, Lh4/d;->c(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lh4/d$a;

    move-result-object p1

    invoke-direct {v0, p0, p1}, La5/e;-><init>(Landroid/app/Activity;Lh4/d$a;)V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lh4/d$a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lh4/d$a;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lh4/d$a;)Lh4/d$a$a;

    move-result-object p0

    const v0, 0x101113

    invoke-virtual {p0, v0}, Lh4/d$a$a;->b(I)Lh4/d$a$a;

    move-result-object p0

    invoke-virtual {p0}, Lh4/d$a$a;->a()Lh4/d$a;

    move-result-object p0

    return-object p0
.end method
