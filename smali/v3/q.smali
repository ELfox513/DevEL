.class public abstract Lv3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lu3/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[Lt3/d;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>([Lt3/d;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/q;->a:[Lt3/d;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lv3/q;->b:Z

    iput p3, p0, Lv3/q;->c:I

    return-void
.end method

.method public static a()Lv3/q$a;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lu3/a$b;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">()",
            "Lv3/q$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    new-instance v0, Lv3/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv3/q$a;-><init>(Lv3/u0;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lu3/a$b;Lj5/j;)V
    .param p1    # Lu3/a$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lj5/j;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lj5/j<",
            "TResultT;>;)V"
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lv3/q;->b:Z

    return v0
.end method

.method public final d()[Lt3/d;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lv3/q;->a:[Lt3/d;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lv3/q;->c:I

    return v0
.end method
