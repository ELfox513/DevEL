.class public final Ln3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "Lu4/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Lu4/b;",
            "Ln3/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Ln3/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lp3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lu3/a$g;

    invoke-direct {v0}, Lu3/a$g;-><init>()V

    sput-object v0, Ln3/b;->a:Lu3/a$g;

    new-instance v1, Ln3/d;

    invoke-direct {v1}, Ln3/d;-><init>()V

    sput-object v1, Ln3/b;->b:Lu3/a$a;

    new-instance v2, Lu3/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v2, Ln3/b;->c:Lu3/a;

    new-instance v0, Lu4/e;

    invoke-direct {v0}, Lu4/e;-><init>()V

    sput-object v0, Ln3/b;->d:Lp3/a;

    return-void
.end method
