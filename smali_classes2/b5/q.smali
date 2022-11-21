.class public interface abstract Lb5/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lb5/q;

.field public static final e:Lb5/q;

.field public static final f:Lb5/q;

.field public static final g:Lb5/q;

.field public static final h:Lb5/q;

.field public static final i:Lb5/q;

.field public static final j:Lb5/q;

.field public static final l:Lb5/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/v;

    invoke-direct {v0}, Lb5/v;-><init>()V

    sput-object v0, Lb5/q;->c:Lb5/q;

    new-instance v0, Lb5/o;

    invoke-direct {v0}, Lb5/o;-><init>()V

    sput-object v0, Lb5/q;->e:Lb5/q;

    new-instance v0, Lb5/h;

    const-string v1, "continue"

    invoke-direct {v0, v1}, Lb5/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb5/q;->f:Lb5/q;

    new-instance v0, Lb5/h;

    const-string v1, "break"

    invoke-direct {v0, v1}, Lb5/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb5/q;->g:Lb5/q;

    new-instance v0, Lb5/h;

    const-string v1, "return"

    invoke-direct {v0, v1}, Lb5/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb5/q;->h:Lb5/q;

    new-instance v0, Lb5/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lb5/g;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lb5/q;->i:Lb5/q;

    new-instance v0, Lb5/g;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lb5/g;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lb5/q;->j:Lb5/q;

    new-instance v0, Lb5/u;

    const-string v1, ""

    invoke-direct {v0, v1}, Lb5/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb5/q;->l:Lb5/q;

    return-void
.end method


# virtual methods
.method public abstract e()Lb5/q;
.end method

.method public abstract f()Ljava/lang/Double;
.end method

.method public abstract g()Ljava/lang/Boolean;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lb5/q;",
            ">;"
        }
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;Lb5/v4;Ljava/util/List;)Lb5/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation
.end method
