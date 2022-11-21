.class public final Lb5/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/b9;


# static fields
.field public static final a:Lb5/b9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb5/i3;

    invoke-direct {v0}, Lb5/i3;-><init>()V

    sput-object v0, Lb5/i3;->a:Lb5/b9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(I)Z
    .locals 0

    invoke-static {p1}, Lb5/j3;->a(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
