.class public Ls1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lt1/j;

.field public final d:Ls1/b;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lt1/j;Ls1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls1/c$a;->a:I

    iput-object p2, p0, Ls1/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Ls1/c$a;->c:Lt1/j;

    iput-object p4, p0, Ls1/c$a;->d:Ls1/b;

    return-void
.end method


# virtual methods
.method public a()Lt1/j;
    .locals 1

    iget-object v0, p0, Ls1/c$a;->c:Lt1/j;

    return-object v0
.end method

.method public b()Ls1/b;
    .locals 1

    iget-object v0, p0, Ls1/c$a;->d:Ls1/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls1/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ls1/c$a;->a:I

    return v0
.end method
