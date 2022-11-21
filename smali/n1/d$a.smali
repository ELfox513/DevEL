.class public Ln1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ln1/c;

.field public final b:Lx1/y;

.field public final c:Lx1/e0;


# direct methods
.method public constructor <init>(Lx1/e0;Lx1/y;Ln1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p2, p0, Ln1/d$a;->b:Lx1/y;

    iput-object p3, p0, Ln1/d$a;->a:Ln1/c;

    iput-object p1, p0, Ln1/d$a;->c:Lx1/e0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bootstrapMethodArguments == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bootstrapMethodHandle == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "declaringClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ln1/c;
    .locals 1

    iget-object v0, p0, Ln1/d$a;->a:Ln1/c;

    return-object v0
.end method

.method public b()Lx1/y;
    .locals 1

    iget-object v0, p0, Ln1/d$a;->b:Lx1/y;

    return-object v0
.end method
