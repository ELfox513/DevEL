.class public final Ln3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/a$a;
    }
.end annotation


# static fields
.field public static final a:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "Lv4/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "Lr3/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Lv4/g;",
            "Ln3/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Lr3/h;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Ln3/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Ln3/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lp3/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Lo3/a;

.field public static final j:Lq3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lu3/a$g;

    invoke-direct {v0}, Lu3/a$g;-><init>()V

    sput-object v0, Ln3/a;->a:Lu3/a$g;

    new-instance v1, Lu3/a$g;

    invoke-direct {v1}, Lu3/a$g;-><init>()V

    sput-object v1, Ln3/a;->b:Lu3/a$g;

    new-instance v2, Ln3/e;

    invoke-direct {v2}, Ln3/e;-><init>()V

    sput-object v2, Ln3/a;->c:Lu3/a$a;

    new-instance v3, Ln3/f;

    invoke-direct {v3}, Ln3/f;-><init>()V

    sput-object v3, Ln3/a;->d:Lu3/a$a;

    sget-object v4, Ln3/b;->c:Lu3/a;

    sput-object v4, Ln3/a;->e:Lu3/a;

    new-instance v4, Lu3/a;

    const-string v5, "Auth.CREDENTIALS_API"

    invoke-direct {v4, v5, v2, v0}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v4, Ln3/a;->f:Lu3/a;

    new-instance v0, Lu3/a;

    const-string v2, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v0, v2, v3, v1}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v0, Ln3/a;->g:Lu3/a;

    sget-object v0, Ln3/b;->d:Lp3/a;

    sput-object v0, Ln3/a;->h:Lp3/a;

    new-instance v0, Lv4/f;

    invoke-direct {v0}, Lv4/f;-><init>()V

    sput-object v0, Ln3/a;->i:Lo3/a;

    new-instance v0, Lr3/i;

    invoke-direct {v0}, Lr3/i;-><init>()V

    sput-object v0, Ln3/a;->j:Lq3/a;

    return-void
.end method
