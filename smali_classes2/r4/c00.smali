.class public abstract Lr4/c00;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/c00;

.field public static final b:Lr4/c00;

.field public static final c:Lr4/c00;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/zz;

    invoke-direct {v0}, Lr4/zz;-><init>()V

    sput-object v0, Lr4/c00;->a:Lr4/c00;

    new-instance v0, Lr4/a00;

    invoke-direct {v0}, Lr4/a00;-><init>()V

    sput-object v0, Lr4/c00;->b:Lr4/c00;

    new-instance v0, Lr4/b00;

    invoke-direct {v0}, Lr4/b00;-><init>()V

    sput-object v0, Lr4/c00;->c:Lr4/c00;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
