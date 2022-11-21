.class public final Lk1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/c$b;,
        Lk1/c$a;
    }
.end annotation


# instance fields
.field public final a:[Lk1/c$a;

.field public final b:[Lk1/c$a;

.field public final c:[Lk1/c$b;

.field public final d:[Lk1/c$b;


# direct methods
.method public constructor <init>([Lk1/c$a;[Lk1/c$a;[Lk1/c$b;[Lk1/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/c;->a:[Lk1/c$a;

    iput-object p2, p0, Lk1/c;->b:[Lk1/c$a;

    iput-object p3, p0, Lk1/c;->c:[Lk1/c$b;

    iput-object p4, p0, Lk1/c;->d:[Lk1/c$b;

    return-void
.end method


# virtual methods
.method public a()[Lk1/c$b;
    .locals 1

    iget-object v0, p0, Lk1/c;->c:[Lk1/c$b;

    return-object v0
.end method

.method public b()[Lk1/c$a;
    .locals 1

    iget-object v0, p0, Lk1/c;->b:[Lk1/c$a;

    return-object v0
.end method

.method public c()[Lk1/c$a;
    .locals 1

    iget-object v0, p0, Lk1/c;->a:[Lk1/c$a;

    return-object v0
.end method

.method public d()[Lk1/c$b;
    .locals 1

    iget-object v0, p0, Lk1/c;->d:[Lk1/c$b;

    return-object v0
.end method
