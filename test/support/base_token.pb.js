/*eslint-disable block-scoped-var, no-redeclare, no-control-regex, no-prototype-builtins*/
"use strict";

var $protobuf = require("protobufjs/minimal");

// Common aliases
var $Reader = $protobuf.Reader, $Writer = $protobuf.Writer, $util = $protobuf.util;

// Exported root namespace
var $root = $protobuf.roots["default"] || ($protobuf.roots["default"] = {});

$root.elipticoin = (function() {

    /**
     * Namespace elipticoin.
     * @exports elipticoin
     * @namespace
     */
    var elipticoin = {};

    elipticoin.BaseToken = (function() {

        /**
         * Constructs a new BaseToken service.
         * @memberof elipticoin
         * @classdesc Represents a BaseToken
         * @extends $protobuf.rpc.Service
         * @constructor
         * @param {$protobuf.RPCImpl} rpcImpl RPC implementation
         * @param {boolean} [requestDelimited=false] Whether requests are length-delimited
         * @param {boolean} [responseDelimited=false] Whether responses are length-delimited
         */
        function BaseToken(rpcImpl, requestDelimited, responseDelimited) {
            $protobuf.rpc.Service.call(this, rpcImpl, requestDelimited, responseDelimited);
        }

        (BaseToken.prototype = Object.create($protobuf.rpc.Service.prototype)).constructor = BaseToken;

        /**
         * Creates new BaseToken service using the specified rpc implementation.
         * @function create
         * @memberof elipticoin.BaseToken
         * @static
         * @param {$protobuf.RPCImpl} rpcImpl RPC implementation
         * @param {boolean} [requestDelimited=false] Whether requests are length-delimited
         * @param {boolean} [responseDelimited=false] Whether responses are length-delimited
         * @returns {BaseToken} RPC service. Useful where requests and/or responses are streamed.
         */
        BaseToken.create = function create(rpcImpl, requestDelimited, responseDelimited) {
            return new this(rpcImpl, requestDelimited, responseDelimited);
        };

        /**
         * Callback as used by {@link elipticoin.BaseToken#balanceOf}.
         * @memberof elipticoin.BaseToken
         * @typedef BalanceOfCallback
         * @type {function}
         * @param {Error|null} error Error, if any
         * @param {elipticoin.Balance} [response] Balance
         */

        /**
         * Calls BalanceOf.
         * @function balanceOf
         * @memberof elipticoin.BaseToken
         * @instance
         * @param {elipticoin.IAddress} request Address message or plain object
         * @param {elipticoin.BaseToken.BalanceOfCallback} callback Node-style callback called with the error, if any, and Balance
         * @returns {undefined}
         * @variation 1
         */
        BaseToken.prototype.balanceOf = function balanceOf(request, callback) {
            return this.rpcCall(balanceOf, $root.elipticoin.Address, $root.elipticoin.Balance, request, callback);
        };

        /**
         * Calls BalanceOf.
         * @function balanceOf
         * @memberof elipticoin.BaseToken
         * @instance
         * @param {elipticoin.IAddress} request Address message or plain object
         * @returns {Promise<elipticoin.Balance>} Promise
         * @variation 2
         */

        return BaseToken;
    })();

    elipticoin.Address = (function() {

        /**
         * Properties of an Address.
         * @memberof elipticoin
         * @interface IAddress
         * @property {Uint8Array|null} [bytes] Address bytes
         */

        /**
         * Constructs a new Address.
         * @memberof elipticoin
         * @classdesc Represents an Address.
         * @implements IAddress
         * @constructor
         * @param {elipticoin.IAddress=} [properties] Properties to set
         */
        function Address(properties) {
            if (properties)
                for (var keys = Object.keys(properties), i = 0; i < keys.length; ++i)
                    if (properties[keys[i]] != null)
                        this[keys[i]] = properties[keys[i]];
        }

        /**
         * Address bytes.
         * @member {Uint8Array} bytes
         * @memberof elipticoin.Address
         * @instance
         */
        Address.prototype.bytes = $util.newBuffer([]);

        /**
         * Creates a new Address instance using the specified properties.
         * @function create
         * @memberof elipticoin.Address
         * @static
         * @param {elipticoin.IAddress=} [properties] Properties to set
         * @returns {elipticoin.Address} Address instance
         */
        Address.create = function create(properties) {
            return new Address(properties);
        };

        /**
         * Encodes the specified Address message. Does not implicitly {@link elipticoin.Address.verify|verify} messages.
         * @function encode
         * @memberof elipticoin.Address
         * @static
         * @param {elipticoin.IAddress} message Address message or plain object to encode
         * @param {$protobuf.Writer} [writer] Writer to encode to
         * @returns {$protobuf.Writer} Writer
         */
        Address.encode = function encode(message, writer) {
            if (!writer)
                writer = $Writer.create();
            if (message.bytes != null && message.hasOwnProperty("bytes"))
                writer.uint32(/* id 1, wireType 2 =*/10).bytes(message.bytes);
            return writer;
        };

        /**
         * Encodes the specified Address message, length delimited. Does not implicitly {@link elipticoin.Address.verify|verify} messages.
         * @function encodeDelimited
         * @memberof elipticoin.Address
         * @static
         * @param {elipticoin.IAddress} message Address message or plain object to encode
         * @param {$protobuf.Writer} [writer] Writer to encode to
         * @returns {$protobuf.Writer} Writer
         */
        Address.encodeDelimited = function encodeDelimited(message, writer) {
            return this.encode(message, writer).ldelim();
        };

        /**
         * Decodes an Address message from the specified reader or buffer.
         * @function decode
         * @memberof elipticoin.Address
         * @static
         * @param {$protobuf.Reader|Uint8Array} reader Reader or buffer to decode from
         * @param {number} [length] Message length if known beforehand
         * @returns {elipticoin.Address} Address
         * @throws {Error} If the payload is not a reader or valid buffer
         * @throws {$protobuf.util.ProtocolError} If required fields are missing
         */
        Address.decode = function decode(reader, length) {
            if (!(reader instanceof $Reader))
                reader = $Reader.create(reader);
            var end = length === undefined ? reader.len : reader.pos + length, message = new $root.elipticoin.Address();
            while (reader.pos < end) {
                var tag = reader.uint32();
                switch (tag >>> 3) {
                case 1:
                    message.bytes = reader.bytes();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
                }
            }
            return message;
        };

        /**
         * Decodes an Address message from the specified reader or buffer, length delimited.
         * @function decodeDelimited
         * @memberof elipticoin.Address
         * @static
         * @param {$protobuf.Reader|Uint8Array} reader Reader or buffer to decode from
         * @returns {elipticoin.Address} Address
         * @throws {Error} If the payload is not a reader or valid buffer
         * @throws {$protobuf.util.ProtocolError} If required fields are missing
         */
        Address.decodeDelimited = function decodeDelimited(reader) {
            if (!(reader instanceof $Reader))
                reader = new $Reader(reader);
            return this.decode(reader, reader.uint32());
        };

        /**
         * Verifies an Address message.
         * @function verify
         * @memberof elipticoin.Address
         * @static
         * @param {Object.<string,*>} message Plain object to verify
         * @returns {string|null} `null` if valid, otherwise the reason why it is not
         */
        Address.verify = function verify(message) {
            if (typeof message !== "object" || message === null)
                return "object expected";
            if (message.bytes != null && message.hasOwnProperty("bytes"))
                if (!(message.bytes && typeof message.bytes.length === "number" || $util.isString(message.bytes)))
                    return "bytes: buffer expected";
            return null;
        };

        /**
         * Creates an Address message from a plain object. Also converts values to their respective internal types.
         * @function fromObject
         * @memberof elipticoin.Address
         * @static
         * @param {Object.<string,*>} object Plain object
         * @returns {elipticoin.Address} Address
         */
        Address.fromObject = function fromObject(object) {
            if (object instanceof $root.elipticoin.Address)
                return object;
            var message = new $root.elipticoin.Address();
            if (object.bytes != null)
                if (typeof object.bytes === "string")
                    $util.base64.decode(object.bytes, message.bytes = $util.newBuffer($util.base64.length(object.bytes)), 0);
                else if (object.bytes.length)
                    message.bytes = object.bytes;
            return message;
        };

        /**
         * Creates a plain object from an Address message. Also converts values to other types if specified.
         * @function toObject
         * @memberof elipticoin.Address
         * @static
         * @param {elipticoin.Address} message Address
         * @param {$protobuf.IConversionOptions} [options] Conversion options
         * @returns {Object.<string,*>} Plain object
         */
        Address.toObject = function toObject(message, options) {
            if (!options)
                options = {};
            var object = {};
            if (options.defaults)
                object.bytes = options.bytes === String ? "" : [];
            if (message.bytes != null && message.hasOwnProperty("bytes"))
                object.bytes = options.bytes === String ? $util.base64.encode(message.bytes, 0, message.bytes.length) : options.bytes === Array ? Array.prototype.slice.call(message.bytes) : message.bytes;
            return object;
        };

        /**
         * Converts this Address to JSON.
         * @function toJSON
         * @memberof elipticoin.Address
         * @instance
         * @returns {Object.<string,*>} JSON object
         */
        Address.prototype.toJSON = function toJSON() {
            return this.constructor.toObject(this, $protobuf.util.toJSONOptions);
        };

        return Address;
    })();

    elipticoin.Balance = (function() {

        /**
         * Properties of a Balance.
         * @memberof elipticoin
         * @interface IBalance
         * @property {number|Long|null} [bytes] Balance bytes
         */

        /**
         * Constructs a new Balance.
         * @memberof elipticoin
         * @classdesc Represents a Balance.
         * @implements IBalance
         * @constructor
         * @param {elipticoin.IBalance=} [properties] Properties to set
         */
        function Balance(properties) {
            if (properties)
                for (var keys = Object.keys(properties), i = 0; i < keys.length; ++i)
                    if (properties[keys[i]] != null)
                        this[keys[i]] = properties[keys[i]];
        }

        /**
         * Balance bytes.
         * @member {number|Long} bytes
         * @memberof elipticoin.Balance
         * @instance
         */
        Balance.prototype.bytes = $util.Long ? $util.Long.fromBits(0,0,true) : 0;

        /**
         * Creates a new Balance instance using the specified properties.
         * @function create
         * @memberof elipticoin.Balance
         * @static
         * @param {elipticoin.IBalance=} [properties] Properties to set
         * @returns {elipticoin.Balance} Balance instance
         */
        Balance.create = function create(properties) {
            return new Balance(properties);
        };

        /**
         * Encodes the specified Balance message. Does not implicitly {@link elipticoin.Balance.verify|verify} messages.
         * @function encode
         * @memberof elipticoin.Balance
         * @static
         * @param {elipticoin.IBalance} message Balance message or plain object to encode
         * @param {$protobuf.Writer} [writer] Writer to encode to
         * @returns {$protobuf.Writer} Writer
         */
        Balance.encode = function encode(message, writer) {
            if (!writer)
                writer = $Writer.create();
            if (message.bytes != null && message.hasOwnProperty("bytes"))
                writer.uint32(/* id 1, wireType 0 =*/8).uint64(message.bytes);
            return writer;
        };

        /**
         * Encodes the specified Balance message, length delimited. Does not implicitly {@link elipticoin.Balance.verify|verify} messages.
         * @function encodeDelimited
         * @memberof elipticoin.Balance
         * @static
         * @param {elipticoin.IBalance} message Balance message or plain object to encode
         * @param {$protobuf.Writer} [writer] Writer to encode to
         * @returns {$protobuf.Writer} Writer
         */
        Balance.encodeDelimited = function encodeDelimited(message, writer) {
            return this.encode(message, writer).ldelim();
        };

        /**
         * Decodes a Balance message from the specified reader or buffer.
         * @function decode
         * @memberof elipticoin.Balance
         * @static
         * @param {$protobuf.Reader|Uint8Array} reader Reader or buffer to decode from
         * @param {number} [length] Message length if known beforehand
         * @returns {elipticoin.Balance} Balance
         * @throws {Error} If the payload is not a reader or valid buffer
         * @throws {$protobuf.util.ProtocolError} If required fields are missing
         */
        Balance.decode = function decode(reader, length) {
            if (!(reader instanceof $Reader))
                reader = $Reader.create(reader);
            var end = length === undefined ? reader.len : reader.pos + length, message = new $root.elipticoin.Balance();
            while (reader.pos < end) {
                var tag = reader.uint32();
                switch (tag >>> 3) {
                case 1:
                    message.bytes = reader.uint64();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
                }
            }
            return message;
        };

        /**
         * Decodes a Balance message from the specified reader or buffer, length delimited.
         * @function decodeDelimited
         * @memberof elipticoin.Balance
         * @static
         * @param {$protobuf.Reader|Uint8Array} reader Reader or buffer to decode from
         * @returns {elipticoin.Balance} Balance
         * @throws {Error} If the payload is not a reader or valid buffer
         * @throws {$protobuf.util.ProtocolError} If required fields are missing
         */
        Balance.decodeDelimited = function decodeDelimited(reader) {
            if (!(reader instanceof $Reader))
                reader = new $Reader(reader);
            return this.decode(reader, reader.uint32());
        };

        /**
         * Verifies a Balance message.
         * @function verify
         * @memberof elipticoin.Balance
         * @static
         * @param {Object.<string,*>} message Plain object to verify
         * @returns {string|null} `null` if valid, otherwise the reason why it is not
         */
        Balance.verify = function verify(message) {
            if (typeof message !== "object" || message === null)
                return "object expected";
            if (message.bytes != null && message.hasOwnProperty("bytes"))
                if (!$util.isInteger(message.bytes) && !(message.bytes && $util.isInteger(message.bytes.low) && $util.isInteger(message.bytes.high)))
                    return "bytes: integer|Long expected";
            return null;
        };

        /**
         * Creates a Balance message from a plain object. Also converts values to their respective internal types.
         * @function fromObject
         * @memberof elipticoin.Balance
         * @static
         * @param {Object.<string,*>} object Plain object
         * @returns {elipticoin.Balance} Balance
         */
        Balance.fromObject = function fromObject(object) {
            if (object instanceof $root.elipticoin.Balance)
                return object;
            var message = new $root.elipticoin.Balance();
            if (object.bytes != null)
                if ($util.Long)
                    (message.bytes = $util.Long.fromValue(object.bytes)).unsigned = true;
                else if (typeof object.bytes === "string")
                    message.bytes = parseInt(object.bytes, 10);
                else if (typeof object.bytes === "number")
                    message.bytes = object.bytes;
                else if (typeof object.bytes === "object")
                    message.bytes = new $util.LongBits(object.bytes.low >>> 0, object.bytes.high >>> 0).toNumber(true);
            return message;
        };

        /**
         * Creates a plain object from a Balance message. Also converts values to other types if specified.
         * @function toObject
         * @memberof elipticoin.Balance
         * @static
         * @param {elipticoin.Balance} message Balance
         * @param {$protobuf.IConversionOptions} [options] Conversion options
         * @returns {Object.<string,*>} Plain object
         */
        Balance.toObject = function toObject(message, options) {
            if (!options)
                options = {};
            var object = {};
            if (options.defaults)
                if ($util.Long) {
                    var long = new $util.Long(0, 0, true);
                    object.bytes = options.longs === String ? long.toString() : options.longs === Number ? long.toNumber() : long;
                } else
                    object.bytes = options.longs === String ? "0" : 0;
            if (message.bytes != null && message.hasOwnProperty("bytes"))
                if (typeof message.bytes === "number")
                    object.bytes = options.longs === String ? String(message.bytes) : message.bytes;
                else
                    object.bytes = options.longs === String ? $util.Long.prototype.toString.call(message.bytes) : options.longs === Number ? new $util.LongBits(message.bytes.low >>> 0, message.bytes.high >>> 0).toNumber(true) : message.bytes;
            return object;
        };

        /**
         * Converts this Balance to JSON.
         * @function toJSON
         * @memberof elipticoin.Balance
         * @instance
         * @returns {Object.<string,*>} JSON object
         */
        Balance.prototype.toJSON = function toJSON() {
            return this.constructor.toObject(this, $protobuf.util.toJSONOptions);
        };

        return Balance;
    })();

    elipticoin.Call = (function() {

        /**
         * Properties of a Call.
         * @memberof elipticoin
         * @interface ICall
         * @property {string|null} [functionName] Call functionName
         * @property {Uint8Array|null} ["arguments"] Call arguments
         */

        /**
         * Constructs a new Call.
         * @memberof elipticoin
         * @classdesc Represents a Call.
         * @implements ICall
         * @constructor
         * @param {elipticoin.ICall=} [properties] Properties to set
         */
        function Call(properties) {
            if (properties)
                for (var keys = Object.keys(properties), i = 0; i < keys.length; ++i)
                    if (properties[keys[i]] != null)
                        this[keys[i]] = properties[keys[i]];
        }

        /**
         * Call functionName.
         * @member {string} functionName
         * @memberof elipticoin.Call
         * @instance
         */
        Call.prototype.functionName = "";

        /**
         * Call arguments.
         * @member {Uint8Array} arguments
         * @memberof elipticoin.Call
         * @instance
         */
        Call.prototype["arguments"] = $util.newBuffer([]);

        /**
         * Creates a new Call instance using the specified properties.
         * @function create
         * @memberof elipticoin.Call
         * @static
         * @param {elipticoin.ICall=} [properties] Properties to set
         * @returns {elipticoin.Call} Call instance
         */
        Call.create = function create(properties) {
            return new Call(properties);
        };

        /**
         * Encodes the specified Call message. Does not implicitly {@link elipticoin.Call.verify|verify} messages.
         * @function encode
         * @memberof elipticoin.Call
         * @static
         * @param {elipticoin.ICall} message Call message or plain object to encode
         * @param {$protobuf.Writer} [writer] Writer to encode to
         * @returns {$protobuf.Writer} Writer
         */
        Call.encode = function encode(message, writer) {
            if (!writer)
                writer = $Writer.create();
            if (message.functionName != null && message.hasOwnProperty("functionName"))
                writer.uint32(/* id 1, wireType 2 =*/10).string(message.functionName);
            if (message["arguments"] != null && message.hasOwnProperty("arguments"))
                writer.uint32(/* id 2, wireType 2 =*/18).bytes(message["arguments"]);
            return writer;
        };

        /**
         * Encodes the specified Call message, length delimited. Does not implicitly {@link elipticoin.Call.verify|verify} messages.
         * @function encodeDelimited
         * @memberof elipticoin.Call
         * @static
         * @param {elipticoin.ICall} message Call message or plain object to encode
         * @param {$protobuf.Writer} [writer] Writer to encode to
         * @returns {$protobuf.Writer} Writer
         */
        Call.encodeDelimited = function encodeDelimited(message, writer) {
            return this.encode(message, writer).ldelim();
        };

        /**
         * Decodes a Call message from the specified reader or buffer.
         * @function decode
         * @memberof elipticoin.Call
         * @static
         * @param {$protobuf.Reader|Uint8Array} reader Reader or buffer to decode from
         * @param {number} [length] Message length if known beforehand
         * @returns {elipticoin.Call} Call
         * @throws {Error} If the payload is not a reader or valid buffer
         * @throws {$protobuf.util.ProtocolError} If required fields are missing
         */
        Call.decode = function decode(reader, length) {
            if (!(reader instanceof $Reader))
                reader = $Reader.create(reader);
            var end = length === undefined ? reader.len : reader.pos + length, message = new $root.elipticoin.Call();
            while (reader.pos < end) {
                var tag = reader.uint32();
                switch (tag >>> 3) {
                case 1:
                    message.functionName = reader.string();
                    break;
                case 2:
                    message["arguments"] = reader.bytes();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
                }
            }
            return message;
        };

        /**
         * Decodes a Call message from the specified reader or buffer, length delimited.
         * @function decodeDelimited
         * @memberof elipticoin.Call
         * @static
         * @param {$protobuf.Reader|Uint8Array} reader Reader or buffer to decode from
         * @returns {elipticoin.Call} Call
         * @throws {Error} If the payload is not a reader or valid buffer
         * @throws {$protobuf.util.ProtocolError} If required fields are missing
         */
        Call.decodeDelimited = function decodeDelimited(reader) {
            if (!(reader instanceof $Reader))
                reader = new $Reader(reader);
            return this.decode(reader, reader.uint32());
        };

        /**
         * Verifies a Call message.
         * @function verify
         * @memberof elipticoin.Call
         * @static
         * @param {Object.<string,*>} message Plain object to verify
         * @returns {string|null} `null` if valid, otherwise the reason why it is not
         */
        Call.verify = function verify(message) {
            if (typeof message !== "object" || message === null)
                return "object expected";
            if (message.functionName != null && message.hasOwnProperty("functionName"))
                if (!$util.isString(message.functionName))
                    return "functionName: string expected";
            if (message["arguments"] != null && message.hasOwnProperty("arguments"))
                if (!(message["arguments"] && typeof message["arguments"].length === "number" || $util.isString(message["arguments"])))
                    return "arguments: buffer expected";
            return null;
        };

        /**
         * Creates a Call message from a plain object. Also converts values to their respective internal types.
         * @function fromObject
         * @memberof elipticoin.Call
         * @static
         * @param {Object.<string,*>} object Plain object
         * @returns {elipticoin.Call} Call
         */
        Call.fromObject = function fromObject(object) {
            if (object instanceof $root.elipticoin.Call)
                return object;
            var message = new $root.elipticoin.Call();
            if (object.functionName != null)
                message.functionName = String(object.functionName);
            if (object["arguments"] != null)
                if (typeof object["arguments"] === "string")
                    $util.base64.decode(object["arguments"], message["arguments"] = $util.newBuffer($util.base64.length(object["arguments"])), 0);
                else if (object["arguments"].length)
                    message["arguments"] = object["arguments"];
            return message;
        };

        /**
         * Creates a plain object from a Call message. Also converts values to other types if specified.
         * @function toObject
         * @memberof elipticoin.Call
         * @static
         * @param {elipticoin.Call} message Call
         * @param {$protobuf.IConversionOptions} [options] Conversion options
         * @returns {Object.<string,*>} Plain object
         */
        Call.toObject = function toObject(message, options) {
            if (!options)
                options = {};
            var object = {};
            if (options.defaults) {
                object.functionName = "";
                object["arguments"] = options.bytes === String ? "" : [];
            }
            if (message.functionName != null && message.hasOwnProperty("functionName"))
                object.functionName = message.functionName;
            if (message["arguments"] != null && message.hasOwnProperty("arguments"))
                object["arguments"] = options.bytes === String ? $util.base64.encode(message["arguments"], 0, message["arguments"].length) : options.bytes === Array ? Array.prototype.slice.call(message["arguments"]) : message["arguments"];
            return object;
        };

        /**
         * Converts this Call to JSON.
         * @function toJSON
         * @memberof elipticoin.Call
         * @instance
         * @returns {Object.<string,*>} JSON object
         */
        Call.prototype.toJSON = function toJSON() {
            return this.constructor.toObject(this, $protobuf.util.toJSONOptions);
        };

        return Call;
    })();

    return elipticoin;
})();

module.exports = $root;
