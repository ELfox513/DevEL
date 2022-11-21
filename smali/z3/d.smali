.class public final Lz3/d;
.super Lu3/e;
.source "SourceFile"

# interfaces
.implements Lx3/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/e<",
        "Lx3/x;",
        ">;",
        "Lx3/w;"
    }
.end annotation


# static fields
.field public static final k:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "Lz3/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "Lz3/e;",
            "Lx3/x;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "Lx3/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lu3/a$g;

    invoke-direct {v0}, Lu3/a$g;-><init>()V

    sput-object v0, Lz3/d;->k:Lu3/a$g;

    new-instance v1, Lz3/c;

    invoke-direct {v1}, Lz3/c;-><init>()V

    sput-object v1, Lz3/d;->l:Lu3/a$a;

    new-instance v2, Lu3/a;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lu3/a;-><init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V

    sput-object v2, Lz3/d;->m:Lu3/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx3/x;)V
    .locals 2

    sget-object v0, Lz3/d;->m:Lu3/a;

    sget-object v1, Lu3/e$a;->c:Lu3/e$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lu3/e;-><init>(Landroid/content/Context;Lu3/a;Lu3/a$d;Lu3/e$a;)V

    return-void
.end method


# virtual methods
.method public final b(Lx3/u;)Lj5/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/u;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lv3/q;->a()Lv3/q$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lt3/d;

    sget-object v2, Lw4/d;->a:Lt3/d;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lv3/q$a;->d([Lt3/d;)Lv3/q$a;

    invoke-virtual {v0, v3}, Lv3/q$a;->c(Z)Lv3/q$a;

    new-instance v1, Lz3/b;

    invoke-direct {v1, p1}, Lz3/b;-><init>(Lx3/u;)V

    invoke-virtual {v0, v1}, Lv3/q$a;->b(Lv3/m;)Lv3/q$a;

    invoke-virtual {v0}, Lv3/q$a;->a()Lv3/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu3/e;->h(Lv3/q;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
