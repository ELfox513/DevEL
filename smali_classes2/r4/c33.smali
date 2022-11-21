.class public abstract Lr4/c33;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/c33;

.field public static final b:Lr4/c33;

.field public static final c:Lr4/c33;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/z23;

    invoke-direct {v0}, Lr4/z23;-><init>()V

    sput-object v0, Lr4/c33;->a:Lr4/c33;

    new-instance v0, Lr4/a33;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lr4/a33;-><init>(I)V

    sput-object v0, Lr4/c33;->b:Lr4/c33;

    new-instance v0, Lr4/a33;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr4/a33;-><init>(I)V

    sput-object v0, Lr4/c33;->c:Lr4/c33;

    return-void
.end method

.method public synthetic constructor <init>(Lr4/b33;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f()Lr4/c33;
    .locals 1

    sget-object v0, Lr4/c33;->a:Lr4/c33;

    return-object v0
.end method

.method public static synthetic g()Lr4/c33;
    .locals 1

    sget-object v0, Lr4/c33;->b:Lr4/c33;

    return-object v0
.end method

.method public static synthetic h()Lr4/c33;
    .locals 1

    sget-object v0, Lr4/c33;->c:Lr4/c33;

    return-object v0
.end method

.method public static i()Lr4/c33;
    .locals 1

    sget-object v0, Lr4/c33;->a:Lr4/c33;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lr4/c33;"
        }
    .end annotation
.end method

.method public abstract b(II)Lr4/c33;
.end method

.method public abstract c(ZZ)Lr4/c33;
.end method

.method public abstract d(ZZ)Lr4/c33;
.end method

.method public abstract e()I
.end method
