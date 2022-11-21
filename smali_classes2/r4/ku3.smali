.class public final Lr4/ku3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qt3;


# instance fields
.field public final a:Lr4/l7;

.field public final b:Lr4/wt3;

.field public c:I

.field public final d:Lr4/ww3;

.field public final e:Lr4/ll2;


# direct methods
.method public constructor <init>(Lr4/l7;Lr4/g04;)V
    .locals 1

    new-instance v0, Lr4/ju3;

    invoke-direct {v0, p2}, Lr4/ju3;-><init>(Lr4/g04;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ku3;->a:Lr4/l7;

    iput-object v0, p0, Lr4/ku3;->b:Lr4/wt3;

    new-instance p1, Lr4/ll2;

    invoke-direct {p1}, Lr4/ll2;-><init>()V

    iput-object p1, p0, Lr4/ku3;->e:Lr4/ll2;

    new-instance p1, Lr4/ww3;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lr4/ww3;-><init>(I)V

    iput-object p1, p0, Lr4/ku3;->d:Lr4/ww3;

    const/high16 p1, 0x100000

    iput p1, p0, Lr4/ku3;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)Lr4/ku3;
    .locals 0

    iput p1, p0, Lr4/ku3;->c:I

    return-object p0
.end method

.method public final b(Lr4/u5;)Lr4/mu3;
    .locals 10

    iget-object v0, p1, Lr4/u5;->b:Lr4/t5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr4/mu3;

    iget-object v3, p0, Lr4/ku3;->a:Lr4/l7;

    iget-object v4, p0, Lr4/ku3;->b:Lr4/wt3;

    sget-object v5, Lr4/ut2;->a:Lr4/ut2;

    iget-object v6, p0, Lr4/ku3;->d:Lr4/ww3;

    iget v7, p0, Lr4/ku3;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lr4/mu3;-><init>(Lr4/u5;Lr4/l7;Lr4/wt3;Lr4/ut2;Lr4/ww3;ILr4/lu3;[B)V

    return-object v0
.end method
