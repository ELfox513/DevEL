.class public final synthetic Lh3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lh3/g0;

.field public final b:[Lr4/fo1;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lh3/g0;[Lr4/fo1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/a0;->a:Lh3/g0;

    iput-object p2, p0, Lh3/a0;->b:[Lr4/fo1;

    iput-object p3, p0, Lh3/a0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object v0, p0, Lh3/a0;->a:Lh3/g0;

    iget-object v1, p0, Lh3/a0;->b:[Lr4/fo1;

    iget-object v2, p0, Lh3/a0;->c:Ljava/lang/String;

    check-cast p1, Lr4/fo1;

    invoke-virtual {v0, v1, v2, p1}, Lh3/g0;->g7([Lr4/fo1;Ljava/lang/String;Lr4/fo1;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
