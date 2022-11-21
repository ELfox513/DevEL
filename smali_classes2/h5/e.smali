.class public final Lh5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "Li5/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "Li5/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Li5/a;",
            "Lh5/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Li5/a;",
            "Lh5/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Lh5/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Lh5/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lu3/a$g;

    invoke-direct {v0}, Lu3/a$g;-><init>()V

    sput-object v0, Lh5/e;->a:Lu3/a$g;

    new-instance v1, Lu3/a$g;

    invoke-direct {v1}, Lu3/a$g;-><init>()V

    sput-object v1, Lh5/e;->b:Lu3/a$g;

    new-instance v2, Lh5/b;

    invoke-direct {v2}, Lh5/b;-><init>()V

    sput-object v2, Lh5/e;->c:Lu3/a$a;

    new-instance v3, Lh5/c;

    invoke-direct {v3}, Lh5/c;-><init>()V

    sput-object v3, Lh5/e;->d:Lu3/a$a;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "profile"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lh5/e;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "email"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lh5/e;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lu3/a;

    const-string v5, "SignIn.API"

    invoke-direct {v4, v5, v2, v0}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v4, Lh5/e;->g:Lu3/a;

    new-instance v0, Lu3/a;

    const-string v2, "SignIn.INTERNAL_API"

    invoke-direct {v0, v2, v3, v1}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v0, Lh5/e;->h:Lu3/a;

    return-void
.end method
