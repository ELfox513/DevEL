.class public final Lr4/xv3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:[I

.field public final c:[Lr4/j44;

.field public final d:[I

.field public final e:[[[I

.field public final f:Lr4/j44;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I[Lr4/j44;[I[[[ILr4/j44;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xv3;->a:[Ljava/lang/String;

    iput-object p2, p0, Lr4/xv3;->b:[I

    iput-object p3, p0, Lr4/xv3;->c:[Lr4/j44;

    iput-object p5, p0, Lr4/xv3;->e:[[[I

    iput-object p4, p0, Lr4/xv3;->d:[I

    iput-object p6, p0, Lr4/xv3;->f:Lr4/j44;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lr4/xv3;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public final b(I)Lr4/j44;
    .locals 1

    iget-object v0, p0, Lr4/xv3;->c:[Lr4/j44;

    aget-object p1, v0, p1

    return-object p1
.end method
